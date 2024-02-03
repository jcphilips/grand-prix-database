import os
from dotenv import load_dotenv
import psycopg
import csv
import fuzzywuzzy
from fuzzywuzzy import process

load_dotenv()

with psycopg.connect(
    dbname=os.getenv("DB_NAME"),
    user=os.getenv("DB_USER"),
    password=os.getenv("DB_PASSWORD"),
    port=os.getenv("DB_PORT"),
    host=os.getenv("DB_HOST")
) as conn:
    with conn.cursor() as cur:

        cur.execute("SELECT id, name FROM teams;")
        temp = cur.fetchall()
        teams = {id: name for (id, name) in temp}
        teams_reversed = {name: id for (id, name) in temp}

        cur.execute("SELECT id, name FROM drivers;")
        temp = cur.fetchall()
        drivers = {id: name for (id, name) in temp}
        drivers_reversed = {name: id for (id, name) in temp}

        cur.execute("SELECT id, name FROM races;")
        temp = cur.fetchall()
        races = {id: name for (id, name) in temp}
        races_reversed = {name: id for (id, name) in temp}
        
        files = os.listdir(os.getenv("RACES_DIR"))
        files = [f for f in files if f.startswith("cleaned")]
        for file in files:
            with open(f"{os.getenv('RACES_DIR')}/{file}", 'r') as csvfile:
                race = file[8:-4]
                reader = csv.DictReader(csvfile)
                for row in reader:
                    driver = row["driver"]
                    team = row["team"] 
                    points = row["points"]
                    race_position = row["race_position"]
                    if not race_position.isnumeric(): 
                        race_position = None

                    best_match_driver, score, _ = process.extractOne(driver, drivers, scorer=fuzzywuzzy.fuzz.token_set_ratio)
                    driver_id = drivers_reversed.get(best_match_driver)
                    best_match_team, score, _ = process.extractOne(team, teams, scorer=fuzzywuzzy.fuzz.token_set_ratio)
                    team_id = teams_reversed.get(best_match_team)

                    best_race_match, score, _ = process.extractOne(race, races, scorer=fuzzywuzzy.fuzz.token_set_ratio)
                    race_id = races_reversed.get(best_race_match)
                    print(f"""
Inserting to {best_race_match}
Driver: {best_match_driver} {driver_id}
Team: {best_match_team} {team_id}
Position: {race_position}
Points: {points}
                    """)
                    try:
                        cur.execute("""
                                    INSERT INTO race_results (race_id, driver_id, team_id, points, race_position) 
                                    VALUES (%s, %s, %s, %s, %s)
                                    """,
                                    (race_id, driver_id, team_id, points, race_position))
                    except:
                        print("Error inserting into table. Possible duplicate")

                    conn.commit()


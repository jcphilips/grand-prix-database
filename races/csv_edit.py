import csv
import os

filedir = os.getcwd()
files = os.listdir(filedir)
files = [fi for fi in files if fi.endswith(".csv")]
for file in files:
    new_csv = open(f"{filedir}/cleaned_{file}", "w")
    writer = csv.DictWriter(new_csv, ["driver", "team", "points", "race_position"])
    writer.writeheader()
    with open(f"{filedir}/{file}") as csvfile:
        reader = csv.DictReader(csvfile)
        for row in reader:
            position = row["Pos"].split(" ")[0]

            driver_name = row["Driver"]
            if driver_name.startswith("#"):
                driver_name = driver_name[driver_name.find(" ") + 1:]

            team = row["Car"]
            points = row["Pts"]

            writer.writerow({"driver": driver_name, "team": team, "points": points, "race_position": position})
        new_csv.close()

from io import StringIO
import os

from bs4 import BeautifulSoup
import pandas as pd
import requests

cwd = os.getcwd()
race_dir = f"{cwd}/races/"

try:
    os.mkdir(race_dir)
except FileExistsError as e:
    print(f"Directory already exists at {race_dir}")

homepage = "https://pitwall.app"
homepage_request = requests.get(homepage)

soup = BeautifulSoup(homepage_request.content, "lxml")

seasons = soup.find("div", class_="footer-block-full").find_all("a")
for season in seasons:
    season_url = homepage + season["href"]
    season_request = requests.get(season_url)
    season_soup = BeautifulSoup(season_request.content, 'lxml')

    season_section = season_soup.select_one("div.section h3:-soup-contains('schedule') + table")
    races = season_section.find_all("a")

    for race in races:
        race_url = homepage + race["href"]
        race_request = requests.get(race_url)
        race_soup = BeautifulSoup(race_request.content, 'lxml')

        title = race_soup.find("h1").get_text()

        table_results = race_soup.select_one("div#race-results table")
        #
        df = pd.read_html(StringIO(str(table_results)))[0]
        #
        df.to_csv(f"{race_dir}/{title}", index=False)
        print(f"Successfully scraped {title} data.")

print("Successfully scraped data for all races!")


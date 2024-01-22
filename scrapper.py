import re
import pandas as pd

from bs4 import BeautifulSoup
import requests

homepage = "https://pitwall.app"
homepage_request = requests.get(homepage)

soup = BeautifulSoup(homepage_request.content, "lxml")

seasons = soup.find("div", class_="footer-block-full").find_all("a")
for season in seasons:
    season_url = homepage + season["href"]
    season_request = requests.get(season_url)
    season_soup = BeautifulSoup(season_request.content, 'lxml')

    season_section = season_soup.select_one("div.section h3:contains('schedule') + table")
    races = season_section.find_all("a")

    for race in races:
        race_url = homepage + race["href"]
        race_request = requests.get(race_url)
        race_soup = BeautifulSoup(race_request.content, 'lxml')

        table_results = race_soup.select_one("div#race-results table")
        # print(table_results)
        #
        df = pd.read_html(table_results)[0]
        #
        # df.to_csv(f"{race_url}.csv", index=False)

    break

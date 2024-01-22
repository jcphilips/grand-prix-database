import re

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

    season_sections = season_soup.find("div", class_="section")
    

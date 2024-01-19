from bs4 import BeautifulSoup
import requests
import re

url = requests.get("https://en.wikipedia.org/wiki/List_of_Formula_One_Grands_Prix")

soup = BeautifulSoup(url.content, "lxml")

def navboxes(soup):

    navboxes = soup.find_all("table", class_="navbox-inner")

    for navbox in navboxes:
        year_links = navbox.find_all("a", href=lambda href: href and href.startswith('/wiki/'), title=lambda title: re.match(r'^.*(?<!\bseason\b)(?!2024)\b\d{4}\b.*$', title))

        for year_link in year_links:
            year_url = "https://en.wikipedia.org" + year_link["href"]
            print(year_url)
            year_response = requests.get(year_url)
            year_soup = BeautifulSoup(year_response.content, 'lxml')

            race_element = year_soup.find_all("table")
#             for table in tables:
#                 process_table(table, year_link[title])
#
#
# def process_table(table, year):
#     with open(f"{year}.csv", 'w'):
#         rows = table.find_all("tr")
#         for row in rows:
#             cells = row.find_all("td")
#             print(cells)
navboxes(soup)

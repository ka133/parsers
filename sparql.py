from wikidata.client import Client
import requests
import csv
from bs4 import BeautifulSoup

"""
Lexemes describing a color
Lexemes describing a color
By Vesihiisi

SELECT ?l ?lemma ?languageLabel  WHERE {
  ?l a ontolex:LexicalEntry; dct:language ?language; wikibase:lemma ?lemma .
  ?l wdt:P31 wd:Q376431.
  SERVICE wikibase:label { bd:serviceParam wikibase:language "[AUTO_LANGUAGE],en". }
}
ORDER BY ?languageLabel
"""


def get_html(url):
    r = requests.get(url)
    return r.text


def get_articles(html):
  soup = BeautifulSoup(html, 'lxml')
  ts = soup.find_all('article')
  return ts

def get_page_data(html):
  pass

    #
    # all_entities = []
    # for tr in html:
    #     all_entities.append(tr.find('tr', class_='data-index').text.strip())
    # return all_entities


def main():
    url = 'https://query.wikidata.org/#%23Lexemes%20describing%20a%20color%0A%23%20Lexemes%20describing%20a%20color%0A%23%20By%20Vesihiisi%0A%0ASELECT%20%3Fl%20%3Flemma%20%3FlanguageLabel%20%20WHERE%20%7B%0A%20%20%3Fl%20a%20ontolex%3ALexicalEntry%3B%20dct%3Alanguage%20%3Flanguage%3B%20wikibase%3Alemma%20%3Flemma%20.%0A%20%20%3Fl%20wdt%3AP31%20wd%3AQ376431.%0A%20%20SERVICE%20wikibase%3Alabel%20%7B%20bd%3AserviceParam%20wikibase%3Alanguage%20%22%5BAUTO_LANGUAGE%5D%2Cen%22.%20%7D%0A%7D%0AORDER%20BY%20%3FlanguageLabel'
    all_entity = (get_html(url))
    print(all_entity)
    client = Client()
    entity = client.get('Q20145', load=True)
    name_prop = client.get('P734')
    name = entity[name_prop].label

    data = {'id': entity.id,
            'description': entity.description,
            'name': name}
    print(data)


if __name__ == '__main__':
    main()

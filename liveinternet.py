import requests
from bs4 import BeautifulSoup
import csv


def get_html(url):
    r = requests.get(url)
    if r.ok:                         #check 200
        return r.text
    print(r.status_code)


def write_csv(data):
    with open('liveinternet.csv', 'a') as f:
        writer = csv.writer(f)
        pass


def get_page_data(html):
    soup = BeautifulSoup(html, 'lxml')
    pass


def main():
    url = 'https://www.liveinternet.ru/rating/ru/'
    get_html(url)


if __name__ == '__main__':
    main()

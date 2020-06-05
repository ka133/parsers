import requests
from bs4 import BeautifulSoup
import csv


def get_html(url):
    r = requests.get(url)
    return r.text


def wright_csv(data):
    with open('cmc.csv', 'a') as f:
        writer = csv.writer(f)
        pass


def get_page_data(html):
    soup = BeautifulSoup(html, 'lxml')
    trs = soup.find('tbody').find_all('tr')
    for tr in trs:
        tds = tr.find_all('td')
        name = tds[1].find('a', class_='cmc-link').text
        print(name)



    print(len(trs))
    # print(trs.text)






def main():
    url = 'https://coinmarketcap.com/'
    get_page_data(get_html(url))
    # print()


if __name__ == '__main__':
    main()

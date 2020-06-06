import requests
from bs4 import BeautifulSoup
import csv
import re


def refined(s):
    r = s[1:].replace(',', '')
    r.replace('.', '')
    return r


def get_html(url):
    r = requests.get(url)
    if r.ok:
        return r.text
    print(r.status_code)


def write_csv(data):
    with open('cmc.csv', 'a') as f:
        writer = csv.writer(f)
        writer.writerow((data['name'],
                         data['url'],
                         data['price']))


def get_page_data(html):
    soup = BeautifulSoup(html, 'lxml')
    trs = soup.find('tbody').find_all('tr')
    for tr in trs:
        tds = tr.find_all('td')
        try:
            name = tds[1].find('a', class_='cmc-link').text.strip()
        except:
            name = ''
        try:
            url = 'https://coinmarketcap.com' + tds[1].find('a').get('href')
        except:
            url = ''
        try:
            price = refined(tds[3].find('a').text.strip())
        except:
            price = ''

        data = {'name': name,
                'url': url,
                'price': price}

        write_csv(data)


def main():
    url = 'https://coinmarketcap.com'

    while True:
        get_page_data(get_html(url))

        soup = BeautifulSoup(get_html(url), 'lxml')
        try:
            pattern = 'Next'
            url = 'https://coinmarketcap.com' + \
                  soup.find('a', text=re.compile(pattern)).get('href')
        except:
            break


if __name__ == '__main__':
    main()

import requests
from bs4 import BeautifulSoup
import csv


def get_html(url):
    r = requests.get(url)
    return r.text


def write_csv(data):
    with open('cmc.csv', 'a') as f:
        writer = csv.writer(f)
        writer.writerow([data['name'],
                         data['url'],
                         data['price']])


def refined(s):
    r = s[1:].replace(',', '')
    r.replace('.', '')
    return r


def get_page_data(html):
    soup = BeautifulSoup(html, 'lxml')
    trs = soup.find('tbody').find_all('tr')
    for tr in trs:
        tds = tr.find_all('td')
        name = tds[1].find('a', class_='cmc-link').text
        # symbol = tds[1].find('div').find('a').text
        url = 'https://coinmarketcap.com' + tds[1].find('a').get('href')
        price = refined(tds[3].find('a').text)

        data = {'name': name,
                'url': url,
                'price': price}

        write_csv(data)


def main():
    url = 'https://coinmarketcap.com/'
    get_page_data(get_html(url))


if __name__ == '__main__':
    main()

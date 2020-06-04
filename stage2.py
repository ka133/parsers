import requests
from bs4 import BeautifulSoup
import csv


def get_html(url):
    response = requests.get(url)
    return response.text


def refined(s):
    # 1, 496 total ratings
    r = s.split(' ')[0]
    return r.replace(',', '')


def write_csv(data):
    """use context-manager with"""
    with open('plugins.csv', 'a') as f:
        writer = csv.writer(f)

        writer.writerow(data['name'],
                         data['url'],
                         data['rating'])


def get_data(html):
    soup = BeautifulSoup(html, 'lxml')
    popular = soup.find_all('section')[1]
    plugins = popular.find_all('article') #resultset ~ list

    for plugin in plugins:
        name = plugin.find('h3').text
        url = plugin.find('h3').find('a').get('href')
        r = plugin.find('span', class_='rating-count').find('a').text
        rating = refined(r)
        data ={'name': name,
               'url': url,
               'rating': rating}
        write_csv(data)


def main():
    url = 'https://wordpress.org/plugins/'
    print(get_data(get_html(url)))


if __name__ == '__main__':
    main()

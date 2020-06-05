import requests
from bs4 import BeautifulSoup
import csv


def refine_rating(s):
    return s.replace(',', '')


def refine_subscribers(s):
    """ 9,3k -> 9300. """
    r = s.replace(',', '')
    return r.replace('k', '000')


def get_html(url):
    r = requests.get(url)
    print(r.status_code)
    if r.ok:             # check 200
        return r.text
    print(r.status_code)


def write_csv(data):
    with open('habrwebdev.csv', 'a') as f:
        writer = csv.writer(f)
        writer.writerow((data['name'],
                         data['url'],
                         data['snippet'],
                         data['subscribers'],
                         data['rating']))


def get_page_data(html):
    soup = BeautifulSoup(html, 'lxml')
    lis = soup.find_all('li', class_='content-list__item')
    for li in lis:
        try:
            name = li.find('a', class_='list-snippet__title-link').text
        except:
            name = ''

        try:
            url = li.find('a').get('href')
        except:
            url = ''

        try:
            snippet = li.find('div', class_='list-snippet__desc').text.strip()  # /n, /t removal
        except:
            snippet = ''

        try:
            subscribers = refine_subscribers(
                li.find('div', class_='stats__counter stats__counter_table-grid stats__counter_subscribers').text)
        except:
            subscribers = ''

        try:
            rating = refine_rating(
                li.find('div', class_='stats__counter stats__counter_table-grid stats__counter_rating').text)
        except:
            rating = ''

        data = {'name': name,
                'url': url,
                'snippet': snippet,
                'subscribers': subscribers,
                'rating': rating}
        write_csv(data)


def main():
    # url = 'https://www.kinopoisk.ru/lists/top500/'
    # url = 'https://8500.ru/cat/ishop-byt.html'
    # url = 'https://www.liveinternet.ru/rating/ru/'
    url = 'https://habr.com/ru/companies/category/webdev/'
    get_page_data(get_html(url))


if __name__ == '__main__':
    main()

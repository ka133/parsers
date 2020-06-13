import requests
from bs4 import BeautifulSoup
import csv
import re


def get_html(url):
    user_agent = {'user-agent': 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) '
                                'Chrome/81.0.4044.138 Safari/537.36'}

    r = requests.get(url, headers=user_agent)
    return r.text


def write_csv(data):
    with open('testimonials.csv', 'a') as file:
        order = ['author', 'since', 'email', 'tel']
        writer = csv.DictWriter(file, fieldnames=order)
        writer.writerow(data)


def get_articles(html):
    soup = BeautifulSoup(html, 'lxml')
    ts = soup.find_all('article')
    return ts


def get_page_data(ts):
    for t in ts:
        author = t.find('p', class_='testimonial-author').text.strip()
        since = t.find('p', class_='traxer-since').text.strip()
        email = t.find('li', class_='email').find('a').text.strip()
        tel = t.find('li', class_='tel').text.strip()
        data = {'author': author,
                'since': since,
                'email': email,
                'tel': tel}

        write_csv(data)


def main():
    # 1. Get testimony-conteiner and testimony-list
    # 2. If list not empty - parsing testimonies
    # 3. If list is empty - break
    while True:
        page = 1
        url = 'https://catertrax.com/why-catertrax/traxers/page/{}/'.format(str(page))
        articles = get_articles(get_html(url))
        if articles:
            get_page_data(articles)
            page += 1
        else:
            break


if __name__ == '__main__':
    main()

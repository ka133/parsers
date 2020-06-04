import requests
from bs4 import BeautifulSoup


def get_html(url):
    response = requests.get(url)
    return response.text


def refined(s):
    # 1, 496 total ratings
    r = s.split(' ')[0]
    result = r.replace(',', '')
    print(result)


def get_data(html):
    soup = BeautifulSoup(html, 'lxml')
    popular = soup.find_all('section')[1]
    plugins = popular.find_all('article')

    for plugin in plugins:
        name = plugin.find('h3').text
        url = plugin.find('h3').find('a').get('href')
        rating = plugin.find('span', class_='rating-count').find('a').text
        refined(rating)
        # print(rating)

    # return plugins


def main():
    url = 'https://wordpress.org/plugins/'
    print(get_data(get_html(url)))


if __name__ == '__main__':
    main()

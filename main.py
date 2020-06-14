import requests
from bs4 import BeautifulSoup


def get_html(url):
    r = requests.get(url)
    return r


def get_page_data(response):
    if 'html' in response.headers['Content-Type']:
        html = response.text
    else:
        html = response.json()
    soup = BeautifulSoup(html) 


def main():

    url = 'https://www.youtube.com/channel/UCY6zVRa3Km52bsBmpyQnk6A/videos'
    print(get_html(url))


if __name__ == '__main__':
    main()

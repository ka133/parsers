import requests
import time
import csv


def get_count_posts():
    # https://api.vk.com/method/wall.get?access_token=a1b42744a1b42744a1b4274443a1c6b8adaa1b4a1b42744ff539e2e241551e4694a2ac9&v=5.110&domain=php2all
    url = 'https://api.vk.com/method/wall.get'
    token = 'a1b42744a1b42744a1b4274443a1c6b8adaa1b4a1b42744ff539e2e241551e4694a2ac9'
    version = 5.21
    domain = 'php2all'
    # domain = 'club178203889'
    count = 100
    offset = 0
    posts = []

    while offset < 1000:
        response = requests.get(url,
                                params={'access_token': token,
                                        'v': version,
                                        'domain': domain,
                                        'count': count,
                                        'offset': offset})
        data = response.json()['response']['items']
        offset += 100
        posts.extend(data)
        time.sleep(0.5)
        return posts


def file_write(posts):
    with open('php2all.csv', 'w') as file:
    # with open('club178203889.csv', 'w') as file:
        a_pen = csv.writer(file)
        a_pen.writerow(('likes', 'body', 'url'))
        for post in posts:
            try:
                if post['attachments'][0]['type'] == ['photo']:
                    img_url = post['attachments'][0]['photo']['sizes'][-1]['url']
                else:
                    img_url = 'pass'
            except: pass
            a_pen.writerow((post['likes']['count'], post['text'], img_url))


posts = get_count_posts()
file_write(posts)

print(1)

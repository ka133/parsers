import requests

# https://api.vk.com/method/wall.get?access_token=a1b42744a1b42744a1b4274443a1c6b8adaa1b4a1b42744ff539e2e241551e4694a2ac9&v=5.110&domain=php2all
url = 'https://api.vk.com/method/wall.get'
token = 'a1b42744a1b42744a1b4274443a1c6b8adaa1b4a1b42744ff539e2e241551e4694a2ac9'
version = 5.21
domain = 'php2all'
count = 100
offset = 0


response = requests.get(url,
                        params={'access_token': token,
                                'v': version,
                                'domain': domain,
                                'count': 100,
                                'offset': offset})
data = response.json()['response']['items']
print(1)
import requests
import csv


def get_html(url):
    r = requests.get(url)
    return r.text


def write_csv(data):
    with open('websites.csv', 'a') as f:
        order = ['name', 'url', 'description', 'traffic', 'percent']
        writer = csv.DictWriter(f, fieldnames=order)
        writer.writerow(data)


def main():
    url = 'https://www.liveinternet.ru/rating///today.tsv?page=2'
    response = get_html(url)
    data = response.strip().split('\n')[1:]
    
    for row in data:
        colums = row.strip().split('\t')
        name = colums[0]
        url = colums[1]
        description = colums[2]
        traffic = colums[3]
        percent = colums[4]

        data = {'name': name,
                'url': url,
                'description': description,
                'traffic': traffic,
                'percent': percent}
        write_csv(data)


if __name__ == '__main__':
    main()
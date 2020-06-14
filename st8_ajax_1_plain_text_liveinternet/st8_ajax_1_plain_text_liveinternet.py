import requests
import csv
from peewee import *

db = PostgresqlDatabase(database='test0', user='postgres', password='di0', host='localhost')


class Rating(Model):
    name = CharField()
    url = TextField()
    description = TextField()
    traffic = CharField()
    percent = CharField()

    class Meta:
        database = db


def get_html(url):
    r = requests.get(url)
    return r.text


def write_csv(data):
    with open('websites.csv', 'a') as f:
        order = ['name', 'url', 'description', 'traffic', 'percent']
        writer = csv.DictWriter(f, fieldnames=order)
        writer.writerow(data)


def main():
    for i in range(0, 5141):
        url = 'https://www.liveinternet.ru/rating///today.tsv?page={}'.format(str(i))
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

    db.connect()
    db.create_tables([Rating])

    with open('websites.csv') as f:
        order = ['name', 'url', 'description', 'traffic', 'percent']
        reader = csv.DictReader(f, fieldnames=order)
        rating = list(reader)
        with db.atomic():
            # for row in coins:
            #     Coin.create(**row)
            for index in range(0, len(rating), 100):
                Rating.insert_many(rating[index:index + 100]).execute()


if __name__ == '__main__':
    main()

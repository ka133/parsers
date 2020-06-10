import csv
import psycopg2
from peewee import *


db = PostgresqlDatabase(database='test1',
                        user='postgres',
                        password='di0',
                        host='localhost')


class Coin(Model):
    name = TextField()
    url = TextField()
    price = TextField()

    class Meta:
        database = 'db'


def main():
    dict = {'name': 'Egas', 'url': 'https://coinmarketcap.com/currencies/egas/', 'price': '0.000311'}
    data = open('1.csv')
    for row in data:
        print(row)

    # db.connect()
    # db.create_tables([Coin, ])



    with open('1.csv') as file:
        print(file.name)
        order = ['name', 'url', 'price']
        reader = csv.DictReader(file, fieldnames=order)

        coins = list(reader)
        for i in coins:
            print(i)

        print('***')

        for i in reader:
            print(i)

        # w1:
        # for row in coins:
        #     pass

            # print(row)
        #     coin = Coin(name=row['name'],
        #                 url=row['url'],
        #                 price=row['price'])
        #     coin.save()

        # for row in coins:
        #     print(row)
        # with db.atomic():
        #     for row in coins:
        #         Coin.create(**row)


if __name__ == '__main__':
    main()

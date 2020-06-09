import csv
from peewee import *
import logging


logger = logging.getLogger('peewee')


db = PostgresqlDatabase(database='test',
                        user='postgres',
                        password='di0',
                        host='localhost')


class Coin(Model):
    name = CharField()
    url = TextField()
    price = CharField()

    class Meta:
        database = 'db'


def main():
    db.connect()
    db.create_tables(Coin)

    with open('cmc.csv') as file:
        print(file.name)
        order = ['name', 'url', 'price']
        reader = csv.DictReader(file, fieldnames=order)

        coins = list(reader)
        coin = Coin(coins[0])
        coin.save()
        print(coin)

        for row in coins:
            print(row)

            coin = Coin(name=row['name'],
                        url=row['url'],
                        price=row['price'])
            coin.save()


if __name__ == '__main__':
    main()

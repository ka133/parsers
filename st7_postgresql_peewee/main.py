import csv
from peewee import *


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
    db.create_tables([Coin])

    with open('cmc.csv') as file:
        print(file.name)
        order = ['name', 'url', 'price']
        reader = csv.DictReader(file, fieldnames=order)

        coins = list(reader)

        for row in coins:
            print(row)



if __name__ == '__main__':
    main()

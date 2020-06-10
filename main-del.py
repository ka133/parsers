import csv
import psycopg2
from peewee import *
import logging


# logger = logging.getLogger('peewee')


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
    # db.connect()
    # db.create_tables([Coin()])


    # with open('cmc01.csv') as file:
    #     print(file.name)
    #     order = ['name', 'url', 'price']
    #     reader = csv.DictReader(file, fieldnames=order)
    #
    #     coins = list(reader)
    #     for i in coins:
    #         print(i)



        # w1:
        # for row in coins:
        #     print(row)
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

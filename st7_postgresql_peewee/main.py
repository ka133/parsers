import csv
from peewee import *





def main():

    with open('cmc.csv') as file:
        print(file.name)
        order = ['name', 'url', 'price']
        reader = csv.DictReader(file, fieldnames=order)

        coins = list(reader)

        for row in coins:
            print(row)



if __name__ == '__main__':
    main()

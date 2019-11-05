import csv
from peewee import *
from datetime import datetime as time


db = PostgresqlDatabase(database='coins', user='postgres', password='rfh,j,jvfbk', host='localhost')

class Coin(Model):  # this is a table actually
    label = CharField(max_length=16)
    name = CharField()  # maxlength is 255 default
    url = TextField()   # unlimited string
    price = CharField()
    cap = CharField()
    change = CharField(max_length=8)

    class Meta:  # class Coin to be bound with database db
        database = db


def main(): 

    db.connect()
    db.create_tables([Coin])

    with open('coinmarketcap.csv') as f:
        keys = ['label', 'name', 'url', 'price', 'cap', 'change']
        reader = csv.DictReader(f, fieldnames=keys)  # fieldnames are in csv, I wrote headers (works for first prompt)
        coins = list(reader)

        ''' for row in reader:  # name of database table is coin
            coin = Coin(label=row['Ticket'], name=row['Name'], url=row['Link'],\
                price=row['Price'], cap=row['Market Cap'], change=row['Change'])  # writing in db of OD
            coin.save()  # took 2.7 sec'''
        
        with db.atomic():  
            '''for row in coins:
                Coin.create(**row)  # one row by one; took 1 sec'''

            for index in range(0, len(coins), 200):
                Coin.insert_many(coins[index:index+200]).execute()  # splitting rows in 200 slices; took 0.14 sec



if __name__ == '__main__':
    t0 = time.now()
    main()
    t = time.now()
    print(f'Time: {(t-t0).seconds}.{(t-t0).microseconds} seconds')
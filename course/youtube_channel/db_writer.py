import csv
from peewee import *


db = PostgresqlDatabase(database='thenx', user='postgres', password='rfh,j,jvfbk', host='localhost')

class Video(Model):
    title = CharField()
    url = TextField()
    timespan = CharField()
    views = CharField()
    thumbnail = TextField()

    class Meta:
        database = db 


def main():
    db.connect()
    db.create_tables([Video])

    with open('thenx.csv') as file:
        keys = ['title', 'url', 'timespan', 'views', 'thumbnail']
        reader = csv.DictReader(file, fieldnames=keys)
        videos = list(reader)

        with db.atomic():
            for index in range(0, len(videos), 30):
                Video.insert_many(videos[index:index+30]).execute()


if __name__ == '__main__':
    main()
    
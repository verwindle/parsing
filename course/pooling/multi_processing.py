import requests
import csv
import multiprocessing
from datetime import datetime as time
from traffic_parser import get_html, write_csv


def get_page_data(text):
    data = text.strip().split('\n')[1:]

    for row in data:  #FIXME!
        columns = row.strip().split('\t')
        name = columns[0]
        url = columns[1]
        desc = columns[2]
        traffic = columns[3]
        percent = columns[4]

        data = dict(name=name, url=url, description=desc, traffic=traffic, percent=percent)
        write_csv(data)


def make_all(url):
    text = get_html(url)
    get_page_data(text)


def main():
    url = 'https://www.liveinternet.ru/rating/ru//today.tsv?page={}'
    urls = [url.format(str(i)) for i in range(6000)]

    with multiprocessing.Pool(20) as pool:
        pool.map(make_all, urls)

if __name__ == '__main__':
    t0 = time.now()
    main()
    t = time.now()
    print(t-t0, 'seconds')
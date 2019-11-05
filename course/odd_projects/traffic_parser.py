'''only plain text into url'''
import requests
import csv


url = 'https://www.liveinternet.ru/rating/ru//today.tsv?page='  # this is not conventional url
                                                                 # link to database with text to get

def get_html(url):
    r = requests.get(url)
    return r.text


def editor(text, s='\n'):
    text = text.strip().split(s)
    if s =='\n':
        text.pop(0)
    return text


def write_csv(data):
    with open('liveinternet.csv', 'a') as f:
        order = ['name', 'url', 'description', 'traffic', 'percent']
        writer = csv.DictWriter(f, fieldnames=order)
        writer.writerow(data)


def main():

    for i in range(1, 7057):  #FIXME!
        url = globals()['url']
        url = f'{url}{i}'
        data = editor(get_html(url))
        
        for row in data:  #FIXME!
            columns = editor(row, s='\t')
            name = columns[0]
            url = columns[1]
            desc = columns[2]
            traffic = columns[3]
            percent = columns[4]

            data = dict(name=name, url=url, description=desc, traffic=traffic, percent=percent)
            write_csv(data)


if __name__ == '__main__':
    main()
    
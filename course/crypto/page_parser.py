import requests
from datetime import datetime as time
from bs4 import BeautifulSoup
from first_article import get_html
import csv


url = 'https://coinmarketcap.com/'

def write_csv(data):
    with open('coinmarketcap.csv', 'a') as file:
        writer = csv.writer(file)
        header = ['Ticket', 'Name', 'Link', 'Price', 'Market Cap', 'Change']
        writer.writerow(header)
        ids = tuple(data.values())
        for i in range(len(ids[0])):  # len of id
            writer.writerow(list(zip(*ids))[i])  # writing in columns


def puller(container, **kwargs):
    for key, tag  in kwargs.items():
        container[key].append(tag)
   

def dump_page_data(html):
    soup = BeautifulSoup(html, 'lxml')
    trs = soup.find('table', id='currencies').find('tbody').\
        find_all('tr')
    
    currencies = dict(symb=[], name=[], link=[], price=[], m_cap=[], change=[])

    for tr in trs:
        tds = tr.find_all('td')
        symb = tds[1].find('a').text
        name = tds[1].find('a', class_='currency-name-container').text
        link = tds[1].find('a').get('href')
        link = f'{url.rstrip("/")}{link}'
        m_cap = tds[2].text.strip()
        price = tds[3].text.strip()
        change = tds[6].text
        
        puller(symb=symb, name=name, link=link, m_cap=m_cap, price=price, change=change, container=currencies)

    return currencies


def main():
    t0 = time.now()
    data = dump_page_data(get_html(url))
    write_csv(data)
    t = time.now()
    print(f'Time: {(t-t0).seconds}.{(t-t0).microseconds} seconds')


if __name__ == '__main__':
    main()
    
''' This version is full, but deliberately complicated, so slow'''
import requests
from bs4 import BeautifulSoup
import csv
import re
    

url = 'https://coinmarketcap.com/'

def status_ok(func):
    def wrapper(url):
        r = func(url)
        if r.ok:
            return r.text
        print(r.status_code)
    return wrapper


def page_toggler(url):
    pattern = 'Next'
    soup = BeautifulSoup(get_html(url), 'lxml').\
    find('ul', class_='pagination bottom-paginator').\
        find('a', text=re.compile(pattern)).get('href')
    url = f'{globals()["url"].rstrip("/")}{soup}'

    return url


def cycle_write(func):
    def wrapper(next_page=False, url=globals()['url']):
        with open('coinmarketcap.csv', 'w') as file:
            writer = csv.writer(file)
            if not next_page:
                header = ['Ticket', 'Name', 'Link', 'Price', 'Market Cap', 'Change']
                writer.writerow(header)
                next_page = True

            # while True is more clear
            while get_html(url):  # all the cycle is for parsing data through pages with "Next 100" button
                data = dump_page_data(get_html(url))
                func(data, writer)
                try:
                    url = page_toggler(url)
                except:
                    url = 'https://coinmarketcap.com/{}'.format(-1)  # break; done for my amuse - throws 404
                    print('data is out') 
                

    return wrapper


def puller(container, **kwargs):
    for key, tag  in kwargs.items():
        container[key].append(tag)


@status_ok
def get_html(url):
    response = requests.get(url)
    return response


@cycle_write
def write_csv(data, writer):
    ids = tuple(data.values())
    for i in range(len(ids[0])):  # len of id
        writer.writerow(list(zip(*ids))[i])  # writing in columns


def dump_page_data(html):
    def tag_ok(expr):
        try:
            expr
        except:
            return ''
        return expr

    soup = BeautifulSoup(html, 'lxml')
    trs = tag_ok(soup.find('table', id='currencies').find('tbody').\
        find_all('tr'))

    currencies = dict(symb=[], name=[], link=[], price=[], m_cap=[], change=[])

    for tr in trs:
        tds = tag_ok(tr.find_all('td'))

        symb = tag_ok(tds[1].find('a').text)
        name = tag_ok(tds[1].find('a', class_='currency-name-container').text)
        link = tag_ok(tds[1].find('a').get('href'))
        if link:
            link = f'{url.rstrip("/")}{link}'
        m_cap = tag_ok(tds[2].text.strip())
        price = tag_ok(tds[3].text.strip())
        change = tag_ok(tds[6].text) 

        puller(symb=symb, name=name, link=link, m_cap=m_cap, price=price, change=change, container=currencies)

    return currencies 


def main():
    write_csv()
    
if __name__ == '__main__':
    main()
    
import requests
from bs4 import BeautifulSoup
import csv


# class ParserTraxer

def get_html(url):
    user_agent = {'User-Agent' :
         'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36'}
    r = requests.get(url, headers=user_agent)
    return r.text


def write_csv(data):
    with open('catertrax.csv', 'a') as f:
        header = ['author', 'yearsince']
        writer = csv.DictWriter(f, fieldnames=header)
        writer.writerow(data)


def get_articles(html):
    soup = BeautifulSoup(html, 'lxml')
    reviews = soup.find('div', class_='testimonial-container').find_all('article')
    
    return reviews  # [*data] or [] for break


def get_page_data(ts_lst):  # testimonials list
    for ts in ts_lst:
        year_sc = ts.find('p', class_='traxer-since').text
        year_sc = year_sc.strip() if year_sc else ''  # instead of try - except

        author = ts.find('p', class_ = 'testimonial-author').text
        author = author.strip() if author else ''  # instead of try - except

        data = dict(author=author, yearsince=year_sc)
        write_csv(data)


def main():
    while True:  # it's soooo long
        page = 1
        url = 'https://catertrax.com/why-catertrax/traxers/page/{}/'.format(str(page))

        html = get_html(url)
        reviews = get_articles(html)
        if reviews:
            get_page_data(reviews)
            page+=1
        else:
            break


if __name__ == '__main__':
    main()
    
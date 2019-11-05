import requests
from bs4 import BeautifulSoup
from first_article import get_html
import csv


def refind(s):
    # 1,470 total_ratings
    rating = s.split()[0].replace(',', '')
    return rating
    

def write_csv(data):
    with open('article.csv', 'a') as file:
        writer = csv.writer(file)
        header = ['Name', 'Link', 'Rate', 'Info']
        writer.writerow(header)

        for i in range(len(data.keys())):
            writer.writerow((data['name'][i], data['link'][i], data['rating'][i], data['desc'][i]))


def dump_data(html):
    soup = BeautifulSoup(html, 'lxml')
    popular = soup.find_all('section')[3]
    article = popular.find_all('article')

    article_data = dict(name=[], link=[], rating=[], desc=[])

    for plugin in article:
        name = plugin.find('h2').text
        link = plugin.find('h2').find('a').get('href')
        rating = plugin.find('span', class_='rating-count').find('a').text  # odd data: comma and desc to refind
        rating = refind(rating)
        desc = plugin.find('div', class_='entry-excerpt').find('p').text

        article_data['name'].append(name)
        article_data['link'].append(link)
        article_data['rating'].append(rating)
        article_data['desc'].append(desc)
    
    write_csv(article_data)
    

def main():
    url = 'https://wordpress.org/plugins'
    dump_data(get_html(url))


if __name__ == '__main__':
    main()
    


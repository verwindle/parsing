'''Parsing of all youtube THENX channel videos; dealing with ajax scroll'''
import requests
import csv
from bs4 import BeautifulSoup
from multiprocessing import Pool
from datetime import datetime as time


yt = 'https://youtube.com'

def get_html(url):  # another html in comparison with browser with js
    r = requests.get(url)
    
    return r


def write_html(html):  # this function here is only to get real html in browser
    with open('thenx.html', 'w') as f:
        f.write(html)  


def write_csv(data):
    with open('thenx.csv', 'a') as file:
        writer = csv.writer(file)
        header = ['Video Title', 'Link', 'Duration, m:s', 'Views', 'Background']
        writer.writerow(header)

        ids = tuple(data.values())
        writer.writerows(list(zip(*ids)))  # writing in columns; not with DictWrite
        # as wish writing with that names; it writes header again in 30 rows
        # so can see pieces of videos on one page


def puller(container, **kwargs):
    for key, tag  in kwargs.items():
        container[key].append(tag)


#@content_type  
def get_next(resp):
    if 'html' in resp.headers['Content-Type']:
        html = resp.text
    else:
        html = resp.json()['load_more_widget_html']  # ajax injection uses json file
    soup = BeautifulSoup(html, 'lxml')

    try:
        url = yt + soup.find('button', class_='load-more-button')\
            .get('data-uix-load-more-href')
    except:
        url=''

    return url


#@content_type
def get_videos(resp):  # cannot parse using html from browser; 2k rows of settings
    if 'html' in resp.headers['Content-Type']:
        html = resp.text
    else:
        html = resp.json()['content_html']  # ajax injection uses json file
    soup = BeautifulSoup(html, 'lxml').\
        find_all('li', class_='channels-content-item')
    desc = [item.find('h3') for item in soup]
   
    videos = dict(title=[], link=[], timespan=[], views=[], thumbnail=[])

    for video in soup:
        timespan = video.find('span', class_='video-time').text
        thumbnail = video.find('img').get('src')

        puller(timespan=timespan, thumbnail=thumbnail, container=videos)

    for video in desc:
        title = video.find('a').text
        link = yt+video.find('a').get('href')
        views, time_passed =  (lambda x, y: (x.text.split('п')[0], y.text))(*video.find_next_sibling().find_all('li'))
        # wow, sorry for complexity

        puller(title=title, link=link, views=views, container=videos)

    return videos


def loop():
    url = 'https://www.youtube.com/user/TheMiamiTrainer/videos'
    
    while url:
        response = get_html(url)
        data = get_videos(response)
        write_csv(data)

        url = get_next(response)


def main():
    t0 = time.now()
    loop()
    t = time.now()
    print(f'Time: {(t-t0).seconds}.{(t-t0).microseconds} seconds')


if __name__ == '__main__':
    main()
    


'''Bad way, it's even half a second longer; kept for use

def loop():
    url = 'https://www.youtube.com/user/TheMiamiTrainer/videos'
    urls = []
    
    while url:
        urls.append(url)
        response = get_html(url)
        url = get_next(response)

    return urls


def make_all(url):
    response = get_html(url)
    data = get_videos(response)
    write_csv(data)


def main():
    t0 = time.now()
    urls = loop()
    with Pool(50) as pool:
        pool.map(make_all, urls)
    t = time.now()
    print(f'Time: {(t-t0).seconds}.{(t-t0).microseconds} seconds')
'''
    
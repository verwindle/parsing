import requests
from bs4 import BeautifulSoup


yt = 'https://youtube.com'

def get_html(url):  # another html in comparison with browser with js
    r = requests.get(url)
    
    return r


def write_html(html):
    with open('test.html', 'w') as f:
        f.write(html.text)


def get_next(resp):
    if 'html' in resp.headers['Content-Type']:
        html = resp.text
    else:
        html = resp.json()['load_more_widget_html']

    soup = BeautifulSoup(html, 'lxml')

    try:
        url = yt + soup.find('button', class_='load-more-button')\
            .get('data-uix-load-more-href')
    except:
        url=''

    return url


def main():
    url = 'https://www.youtube.com/user/TheMiamiTrainer/videos'
    response = get_html(url)
    url = get_next(response)
    write_html(get_html(url))


if __name__ == '__main__':
    main()
    
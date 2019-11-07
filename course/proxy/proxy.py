import requests
from bs4 import BeautifulSoup
from random import randint


def schema_choser(s):
    return 'http' if 'no' in s else 'https'


def puller(container, **kwargs):
    for key, tag  in kwargs.items():
        container[key].append(tag)


def available_proxies():
    html = requests.get('https://free-proxy-list.net/').text
    soup = BeautifulSoup(html, 'lxml')
    rows = soup.find('div', class_='table-responsive').\
        find('tbody').find_all('tr')[:34]

    proxies = dict(secure=[], address=[])

    for tr in rows:
        tds = tr.find_all('td')
        secure = schema_choser(tds[6])
        IP = tds[0].text
        port = tds[1].text

        puller(secure=secure, address=f'{IP}:{port}', container=proxies)

    return proxies


def get_proxy(proxy_cont):
    l = len(proxy_cont['address'])
    return (proxy_cont['secure'][randint(0, l)], proxy_cont['address'][randint(0, l)])


def get_IP(url, proxy):
    # proxies = {'https': 'IPaddress:5000'}
    proxy = (lambda x: {x[0]: x[1]})(proxy)
    resp = requests.get(url, proxies=proxy, timeout=4)

    return resp.json()['origin']


def main():
    proxy = get_proxy(available_proxies())
    print(proxy)
    url = 'http://httpbin.org/ip'  # goes to url using proxy if connected
    # may not be succeed due to httpVShttps protocol
    res = get_IP(url, proxy)
    print(res.split(',')[0])  # wtf it returns 2 copies


if __name__ == '__main__':
    main()
    
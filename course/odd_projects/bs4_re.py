from bs4 import BeautifulSoup
import re


def get_copywriter(tag):
    _filter = tag.find('div', id='whois').text.strip()
    if 'Copywriter' in _filter:
        return tag
    return None


def get_salary(text):
    pattern = r'\d{1,6}'  # number of digits
    salary = re.findall(pattern, text)
    # salary = re.search(pattern, text).group()
    return salary[0]


def main():
    file = open('index.html', 'r') 
    soup = BeautifulSoup(file, 'lxml')
    
    row = soup.find_all('div', {'data-set': 'salary'})  # using dict if key is bad for key=
    alena = soup.find('div', text='Alena').find_parent(class_='row')  # searching outer info for known
    
    copywriters = []

    persons = soup.find_all('div', class_='row')
    for p in persons:
        cw = get_copywriter(p)
        if cw:
            copywriters.append(cw)

    
    salary = soup.find_all('div', {'data-set': 'salary'})
    for s in salary:
        print(get_salary(s.text))

    salary = soup.find_all('div', text=re.compile(r'\d{1,6}'))  # where text contains digits?
    for s in salary:
        print(s.text)


'''
^ - начало строки
$ - конец строки
. - любой символ
+ - неограниченное количество вхождений
\d - цифра
\w - буква, цифра, андерскор (пробел не считает)

surname@gmail.com - \w+$@
@twitter - ^@\w+
'''


if __name__ == '__main__':
    main()
    
import csv


def write_csv(data):
    with open('persons.csv', 'a') as f:
        writer = csv.writer(f)
        tmp = []
        for key in data.keys():
            tmp.append(data[key])
        writer.writerow(tmp)


def also_write_csv(data):
    with open('persons.csv', 'a') as f:
        order = ['age', 'surname', 'name']
        writer = csv.DictWriter(f, fieldnames=order)
        writer.writerow(data)


def main():

    d = dict(name='Ivan', surname='Kuritsyn', age=21)
    d1 = dict(name='Ivan', surname='Ivanov', age=18)
    d2 = dict(name='Ksu', surname="Per'eva", age=32) 

    lst = list((d, d1, d2))
    
    with open('coinmarketcap.csv', 'r') as file:
        reader = csv.DictReader(file)
        for row in reader:
            print(row)

if __name__ == '__main__':
    main()
    
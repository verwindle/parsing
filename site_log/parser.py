import re
from collections import Counter
import csv


class IPCounter():
    
    regexp = r'\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}'

    def __init__(self, filename):
        self.filename = filename
        self.ips = self.reader()
        self.count = self.count()


    def reader(self):
        with open(self.filename) as f:
            log = f.read()

            ips_list = re.findall(self.regexp, log)

        return ips_list


    def count(self):
        return Counter(self.ips)


    def write_csv(self):
        with open('output.csv', 'w') as csvfile:
            writer = csv.writer(csvfile)

            header = ['IP', 'Freq']
            writer.writerow(header)


            for item in self.count:
                writer.writerow((item, self.count[item]))


if __name__ == '__main__':
   IPCounter('test.log').write_csv()
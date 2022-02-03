import csv

from matplotlib import widgets

f = open('./Data.csv', 'r')
for v in csv.reader(f):
    print(v)
f.close()

with open('./Data.csv', 'r') as f:
    data = [v for v in csv.reader(f)]

print('data =\n', data)
f = open('./CheckData.csv', 'w')
for v in data:
    ck = 0
    for u in v:
        if ck == 0:
            f.write('ck_{}'.format(u))
            ck += 1
        else:
            f.write(',ck_{}'.format(u))
    f.write('\n')
f.close()

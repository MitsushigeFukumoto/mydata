def reprace0(d, c):
    d[0] = c


def replace(d, c):
    d = c


data = [10, 30, 20, 50]
print('data = ', data)

reprace0(data, 'a')
print('data = ', data)

v = 1
print('v = ', v)
replace(v, 2)
print('v = ', v)

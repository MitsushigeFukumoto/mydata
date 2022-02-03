from splitstring import Csplit
a = "a b c"
print('a = ', a)
a1 = a.split()
print('a1 = ', a1)
b = "a, b, c"
print('b = ', b)
b1 = b.split()
print('b1 = ', b1)
b2 = b.split(',')
print('b2 = ', b2)


sp = Csplit([',', ' '])
b3 = sp.split(b)
print('b3 = ', b3)

c = " a, b c"
print('c = ', c)
c1 = c.split(',')
print('c1 = ', c1)
c2 = sp.split(c)
print('c2 = ', c2)

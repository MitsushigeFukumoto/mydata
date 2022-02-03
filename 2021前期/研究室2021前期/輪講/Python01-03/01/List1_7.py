def MyPercentile(d, p):
    x = sorted(d)
    n = len(x)
    pos = n*(p/100.0)+0.5
    if pos <= 1:
        return x[0]
    elif pos >= n:
        return x[n-1]
    else:
        i = int(pos)
        v = (pos-i)*x[i]+(i+1-pos)*x[i-1]
        return v


data = [10, 30, 20, 50]
print('data = ', data)

myQ1 = MyPercentile(data, 25)
myQ2 = MyPercentile(data, 50)
myQ3 = MyPercentile(data, 75)
print('MyQ1 = {0}  MyQ2 = {1}  MyQ3 = {2}'.format(myQ1, myQ2, myQ3))

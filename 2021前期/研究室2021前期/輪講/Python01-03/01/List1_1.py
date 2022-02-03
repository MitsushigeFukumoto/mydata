data = [10, 30, 20, 50]
print('data = ', data)
sum = 0
for v in data:
    sum += v
print('sum = ', sum)
mean = sum/len(data)
print('mean =', mean)

ssum = 0.0
for v in data:
    ssum += (v-mean)**2
    var = ssum/len(data)
print('var = ', var)

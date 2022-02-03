f = open('./TextData.txt', 'r')
data = f.readlines()
f.close()
print('data = \n', data)
for i in range(4):
    data[i] = int(data[i])
data[4] = float(data[4])
print('data = \n', data)
for i in range(5, len(data)):
    data[i] = data[i].strip('\n')
print('data = \n', data)

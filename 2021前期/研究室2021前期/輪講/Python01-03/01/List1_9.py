import copy

data = [10, 30, 20, 50]
print('data = ', data)

data_1 = sorted(data)
print('data_1 = ', data_1)
print('data = ', data)

data_copy = copy.copy(data)
data.sort()
print('data = ', data)
print('data_copy = ', data_copy)

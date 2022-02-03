import pickle

a = [1, 2, 3, 'x', 'y', 'z']

print('a = ', a)
with open('./03/usePkl.pkl', 'wb') as f:
    pickle.dump(a, f)

#b = pickle.load(open('usePkl.pkl', 'rb'))
#print('b = ', b)

with open('./03/usePkl.pkl', 'rb') as f:
    b = pickle.load(f)
    print('b = ', b)

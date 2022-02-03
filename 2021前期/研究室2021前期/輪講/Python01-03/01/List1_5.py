import numpy as np

data = [10, 30, 20, 50]
print('data = ', data)
v_min = np.amin(data)
print('v_min = ', v_min)
v_med = np.median(data)
print('median = ', v_med)
v_max = np.amax(data)
print('v_max = ', v_max)

Q1 = np.percentile(data, 25)
Q2 = np.percentile(data, 50)
Q3 = np.percentile(data, 75)
print('Q1 = {0}  Q2 = {1}  Q3 = {2}'.format(Q1, Q2, Q3))

import numpy as np

data = [10, 30, 20, 50]
print('data = ', data)
v_sum = np.sum(data)
print('sum = ', v_sum)
v_mean = np.mean(data)
print('mean = ', v_mean)
v_var = np.var(data)
print('var = ', v_var)
v_std = np.std(data)
print('v_std = ', v_std, '   v_std**2', v_std**2)

import matplotlib.pyplot as plt

plt.figure(figsize=(5, 3))
plt.xlim(0, 10)
plt.ylim(0, 6)
plt.plot([1, 9], [3, 3], 'bo')
plt.plot([1, 9], [3, 3], color='b', linestyle=(0, (20, 5)))
plt.plot([1, 9], [4, 4], 'bo')
plt.plot([1, 9], [4, 4], color='b', linestyle=(5, (20, 5)))
plt.plot([1, 9], [2, 2], 'bo')
plt.plot([1, 9], [2, 2], color='b', linestyle=(-5, (20, 5)))

plt.plot([1, 9], [5, 5], color='r', linestyle=(0, (20, 3, 3, 3)))
plt.plot([1, 9], [1, 1], color='g', linestyle=(0, (10, 2, 2, 2, 2, 2)))

plt.show()

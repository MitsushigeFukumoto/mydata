from os import P_PGID
from types import LambdaType
import matplotlib.pyplot as plt

Days = [5, 6, 7, 8, 9, 10, 11, 12, 13, 14]

MaxTemp = [28, 24, 25, 27, 27, 25, 25, 27, 28, 25]

MinTemp = [18, 20, 17, 17, 20, 20, 19, 16, 17, 18]

plt.title('The Weather Forecast for\nthe 10 Days Ahead', fontsize=16)
plt.plot(Days, MaxTemp, 'rD', markersize=9)
plt.plot(Days, MinTemp, 'bs', markersize=9)
plt.plot(Days, MaxTemp, 'r-', linewidth=3, label='Max. Temp')
plt.plot(Days, MinTemp, 'b-', linewidth=3, label='Min. Temp')
plt.xlim(4, 15)
plt.ylim(15, 30)
plt.legend(loc=0)
plt.xlabel('Day')
plt.ylabel('Temperature ($^\circ\mathrm {C} $)')
plt.show()

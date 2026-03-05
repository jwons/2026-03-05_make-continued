import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv('data/data2.csv')
plt.plot(df['x'], df['y'])
plt.savefig('results/plot2.png')
print("Plot saved!")
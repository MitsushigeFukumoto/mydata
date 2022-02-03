# 第1引数:元ファイル名
# 第2引数:人数

import pandas as pd
import sys
import os

# 引数を処理
args = sys.argv
try:
    df = pd.read_csv('./'+args[1], sep=',')
except IndexError:
    print("第1引数にファイルパスを与えてください。")
    sys.exit()
try:
    num = args[2]
except IndexError:
    print("第2引数に人数を与えてください。")
    sys.exit()

time = int(df.iloc[0][2])
sec = 600
unique = []
filename = os.path.splitext(os.path.basename(args[1]))[0]
dirpath = './b3_data/'
os.makedirs(dirpath, exist_ok=True)

# 出力ファイルのパス
path = '{}{}_{}.csv'.format(dirpath, filename, sec)
people = num+'人'

header = pd.DataFrame(columns=[people])
header.to_csv(path, index=False)

epoch_list = df['epoch'].values

for i in range(len(df)):
    if epoch_list[i] < time + sec:
        unique.append(i)

    else:
        # uniqueを出力
        data = {
            people: [df.iloc[unique]['id'].nunique()],
        }
        line = pd.DataFrame(data, columns=[people])
        
        line.to_csv(path, index=False, mode="a", header=False)
        
        # listの中身を初期化
        unique = []
        unique.append(i)
        time += sec

df = pd.read_csv(path)
df.T.to_csv(path, mode='w', header=False , encoding = "shift-jis")

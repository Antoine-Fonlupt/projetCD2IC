
import re
import numpy as np
import matplotlib.pyplot as plt

def loadRes(path):
    with open(path, 'r') as f:
        header = True
        data = {}
        index = {}
        for line in f.readlines():
            row = line.replace('\n','').split('",')
            if header:
                for i in range(len(row)):
                    index[i] = row[i]
                    data[row[i]] = []
            else:
                row = line.split(',')
                for i in range(len(row)):
                    try:
                        v = float(row[i])
                    except:
                        v = data[index[i]][-1]
                    data[index[i]].append(v)
            header = False
        return data

data = loadRes('sweepBivar3.csv')


def processData(data):
    res = {}
    resTime = {}
    resTrace = {}
    for k in data:
        if k[-1] == 'Y':
            split = k.split(',')
            wmn2 = float(split[0].split('=')[-1])
            wmp5 = float(split[1].split('=')[-1].split(')')[0])
            if wmn2 not in res.keys():
                res[wmn2] = {}
                resTime[wmn2] = {}
                resTrace[wmn2] = {}
            timeTraceName = k[:-1] + 'X'

            time = np.array(data[timeTraceName])
            value = np.array(data[k])

            #res[wmn2][wmp5] = time[np.argmin(value < 0.7)]
            res[wmn2][wmp5] = np.interp(150e-9, time, value) #value
            resTrace[wmn2][wmp5] = value
            resTime[wmn2][wmp5] = time

    return res, resTime, re0sTrace


res, resTime, resTrace = processData(data)
wmn2s = np.array(sorted(res.keys()))
wmp5s = np.array(sorted(res[wmn2s[0]].keys()))
arr = np.zeros((len(wmn2s), len(wmp5s)))

for i in range(len(wmn2s)):
    for j in range(len(wmp5s)):
        try:
            arr[i, j] = res[wmn2s[i]][wmp5s[j]]
        except:
            print(".")
        
ax = plt.axes(projection="3d")
#print(type(arr[0,0]))
print(arr.shape)
#(x, y) = np.meshgrid([i for i in range(arr.shape[0])], [i for i in range(arr.shape[-1])])
(x, y) = np.meshgrid(wmn2s*1e6, wmp5s*1e6)
ax.set_xlabel("$W_n [\mu m]$")
ax.set_ylabel("$W_p [\mu m]$")
print(x)

ax.plot_surface(x, y, arr, cmap="cividis")
plt.show()

1/0

#plt.imshow(arr)
plt.contourf(arr)
plt.colorbar(label='Propagation time')
plt.show()

a = wmn2s[-2]
b = wmp5s[-2]
plt.plot(resTime[a][b], resTrace[a][b])
plt.show()

import numpy as np
import matplotlib.pyplot as plt


def loadRes(path):
    with open(path, 'r') as f:
        header = True
        data = {}
        index = {}
        for line in f.readlines():
            row = line.replace('\n', '').split(",")
            if header:
                for i in range(len(row)):
                    index[i] = row[i]
                    data[row[i]] = []
            else:
                for i in range(len(row)):
                    data[index[i]].append(float(row[i]))
            header = False
        return data


def process(data):
    res = {}
    wmn2_list = []
    wmp5_list = []
    energy_list = []
    for k in data:
        wmn2 = float(k.split('=')[1].split(")")[0])
        if wmn2 not in res.keys():
            res[wmn2]={}
        match k[-1]:
            case 'X':
                wmp5 = data[k]
                energies = data[k.replace('X', 'Y')]
                print(energies)
                for j in range(len(wmp5)) :
                    res[wmn2][wmp5[j]]=energies[j]
            case 'Y':
                pass 
    return res

data = loadRes("Eyves.csv")
print(process(data))

res = process(data)

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
(x, y) = np.meshgrid(wmn2s*1e6, wmp5s*1e6)

ax.set_xlabel("$W_n [\mu m]$")
ax.set_ylabel("$W_p [\mu m]$")
ax.plot_surface(x, y, arr, cmap="cividis")
plt.show()
#!/usr/bin/python
# -*- coding: utf-8 -*-
import matplotlib as mpl
import matplotlib
#from numpy.random import randn
import matplotlib.pyplot as plt
#from matplotlib.ticker import FuncFormatter
import numpy as np
import sys

# Get the title from the results
if len(sys.argv) > 1:
    Title = sys.argv[1] 
    path = 'measurements.dat'
else:
    Title = 'NaN'
    path = './TSPCFF_setup_explore/SetupCLPropagationPlot/measurements.dat'


def loadMeasurement(path):
    data = {}
    with open(path, 'r') as f:
        header = True
        for l in f.readlines():
            u = [i for i in l.replace('\n','').split(' ') if i != '']
            if not header and u != []:
                cap = float(u[0])
                delay = float(u[1])*1e-12 # into s
                propagationTime = float(u[2])*1e-9 # into s
                if cap not in data:
                    data[cap] = {'delay':[], 'propagationTime':[]}
                data[cap]['delay'].append(delay)
                data[cap]['propagationTime'].append(propagationTime)
            header = False
    return data


fig, axs = plt.subplots(figsize=(6, 4), ncols=2)

data_schematic = loadMeasurement('./TSPCFF_setup_explore/measurements_schematic.dat')
data_layout = loadMeasurement('./TSPCFF_setup_explore/measurements_layout.dat')

cmap = mpl.colormaps['plasma']
colors = cmap(np.linspace(0, 1, len(data_layout)))
caps = sorted(data_layout.keys())

def plotResult(data, axs, style, type):
    legended = False
    for i, cap in enumerate(caps):
        data[cap]['delay'] = np.array(data[cap]['delay'])
        data[cap]['propagationTime'] = np.array(data[cap]['propagationTime'])
        if not legended:
            axs[0].plot(data[cap]['delay']*1e12, data[cap]['propagationTime']*1e9, style, label=f'Propagation Time ({type})', color=colors[i])
            axs[1].plot(data[cap]['delay']*1e12, (data[cap]['propagationTime']+data[cap]['delay'])*1e9, style, label=f'Setup+Propagation Time ({type})', color=colors[i])
            legended = True
        else:
            axs[0].plot(data[cap]['delay']*1e12, data[cap]['propagationTime']*1e9, style, color=colors[i])
            axs[1].plot(data[cap]['delay']*1e12, (data[cap]['propagationTime']+data[cap]['delay'])*1e9, style, color=colors[i])

sm = matplotlib.cm.ScalarMappable(norm=matplotlib.colors.Normalize(min(caps), max(caps)), cmap=cmap)
sm.set_array([])
cbar = fig.colorbar(sm)
cbar.set_label("Load Capacitor")

plotResult(data_schematic, axs, '-', 'Schematic')
plotResult(data_layout, axs, '--', 'Layout')
    
axs[0].set_yscale('log')
axs[0].set_xlabel('Setup Time [ps]')
axs[0].set_ylabel('Time [ns]')
axs[0].legend()

axs[1].set_yscale('log')
axs[1].set_xlabel('Setup Time [ps]')
axs[1].set_ylabel('Time [ns]')
axs[1].legend()

fig.suptitle('Setup time extraction of the TSPCFF cell')

plt.show()
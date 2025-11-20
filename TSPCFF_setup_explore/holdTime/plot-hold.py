#!/usr/bin/python
# -*- coding: utf-8 -*-
import matplotlib as mpl
import matplotlib
#from numpy.random import randn
import matplotlib.pyplot as plt
#from matplotlib.ticker import FuncFormatter
import numpy as np
import sys


def loadMeasurement(path):

    data = {}
    with open(path, 'r') as f:
        header = True
        for l in f.readlines():
            u = [i for i in l.replace('\n','').split(' ') if i != '']
            if not header and u != []:
                cap = float(u[0])
                delay = float(u[1])*1e-12 # into s
                state = float(u[2])*1e-9 # into s
                if cap not in data:
                    data[cap] = {'delay':[], 'state':[]}
                data[cap]['delay'].append(delay)
                data[cap]['state'].append(state)
            header = False
    return data

def plotData(axs, data, ys, style, label):
    caps = sorted(data.keys())
    for i, cap in enumerate(caps):
        delay = -np.array(data[cap]['delay'])*1e12
        state = np.array(data[cap]['state'])*1e9

        axs.plot(delay, state, style, label=label)
        idx = np.argmin(state)
        delayvalue = delay[idx]
        axs.annotate("$T_{hold,min}="+"{:.1f}".format(delayvalue)+"ps$", 
                    xy=(delayvalue, max(state)), 
                    xytext=(min(delay), ys*max(state)-min(state)), 
                    arrowprops={'arrowstyle':'<->'})

fig, axs = plt.subplots(figsize=(6, 4))
legended = False

plotData(axs, loadMeasurement('./TSPCFF_setup_explore/measurements_schematic.dat'), 0.6, 'k', 'Schematic')
plotData(axs, loadMeasurement('./TSPCFF_setup_explore/measurements_layout.dat'), 0.3,  'k--', 'Layout')

        
axs.set_xlabel('Hold Time [ps]')
axs.set_ylabel('Output State (1 is correct)')
axs.legend()


fig.suptitle('Hold time extraction of the TSPCFF cell')

plt.show()
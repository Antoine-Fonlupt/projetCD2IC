#!/usr/bin/python
# -*- coding: utf-8 -*-
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
    path = './TSPCFF_setup_explore/measurements.dat'


Xs = []
Ys = []
with open(path, 'r') as f:
    header = True
    for l in f.readlines():
        u = [i for i in l.replace('\n','').split(' ') if i != '']
        if not header and u != []:
            Xs.append(float(u[0]))
            Ys.append(float(u[-1]))
        header = False

Xs = np.array(Xs)
Ys = np.array(Ys)

plt.plot(Xs, Ys, '.-', label='Propagation Time')
plt.plot(Xs, Ys+Xs*0.001, '.-', label='Setup+Propagation Time')
x0 = Xs[np.argmin(np.abs(Ys+Xs*0.001))]
plt.plot([x0, x0], [np.min(Ys), np.max(Ys)], 'k--')

plt.title('TSPCFF_setup_explore')
plt.xlabel('Setup Time [ps]')
plt.ylabel('Time [ns]')
plt.yscale('log')
plt.legend()
plt.show()
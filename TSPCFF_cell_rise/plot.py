#!/usr/bin/python
# -*- coding: utf-8 -*-
import matplotlib
#from numpy.random import randn
import matplotlib.pyplot as plt
#from matplotlib.ticker import FuncFormatter
import numpy as np
import sys

cmap = matplotlib.colormaps['plasma']
colors = cmap(np.linspace(0, 1, 7))
fig, axs = plt.subplots(figsize=(6, 4))

# Get the title from the results
Title = ""#sys.argv[1] 

# Read results from simasureu
tab = np.genfromtxt('TSPCFF_cell_rise/measurements.dat', skip_header=1)
# Loop on each input slope
for islope in range(0, 7):
    # Get one dimensional array 
    ltab = tab[islope]
    # Get the slope value
    label = str(ltab[0])
    # Get the list of pairs (loaad_cap, fall_cell)
    ltab = np.delete(ltab, 0)
    # Extract the load_cap values
    xtab = ltab[0::2]
    # Extract the output values
    ytab = ltab[1::2]
    if islope == 0:
        axs.plot(xtab,ytab, label='Layout', color=colors[islope])
    else:
        axs.plot(xtab,ytab, color=colors[islope])

# Read results from simasureu
tab = np.genfromtxt('TSPCFF_cell_rise/measurements_schematic.dat', skip_header=1)
caps = []
# Loop on each input slope
for islope in range(0, 7):
    # Get one dimensional array 
    ltab = tab[islope]
    # Get the slope value
    label = str(ltab[0])
    caps.append(ltab[0])
    # Get the list of pairs (loaad_cap, fall_cell)
    ltab = np.delete(ltab, 0)
    # Extract the load_cap values
    xtab = ltab[0::2]
    # Extract the output values
    ytab = ltab[1::2]
    if islope == 0:
        axs.plot(xtab,ytab,'--', label='Schematic', color=colors[islope])
    else:
        axs.plot(xtab,ytab,'--', color=colors[islope])

sm = matplotlib.cm.ScalarMappable(norm=matplotlib.colors.Normalize(min(caps), max(caps)), cmap=cmap)
sm.set_array([])
cbar = fig.colorbar(sm)
cbar.set_label("Load Capacitor")

fig.suptitle("Post Layout Simulation vs Schematic level Propagation Time")
axs.set_xlabel('Load capacitor [fF]')
axs.set_ylabel('Output rising propagation time [ns]')
axs.legend()
axs.grid()

plt.show()


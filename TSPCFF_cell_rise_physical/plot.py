#!/usr/bin/python
# -*- coding: utf-8 -*-
import matplotlib
#from numpy.random import randn
import matplotlib.pyplot as plt
#from matplotlib.ticker import FuncFormatter
import numpy as np
import sys

# Get the title from the results
Title = sys.argv[1] 

# Read results from simasureu
tab = np.genfromtxt('measurements.dat', skip_header=1)
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
    plt.plot(xtab,ytab, label=label)

plt.title(Title)
plt.xlabel('Load capacitor (ff)')
plt.ylabel('Output rising propagation time (ns)')
legend = plt.legend(loc='upper left', shadow=True)


plt.show()


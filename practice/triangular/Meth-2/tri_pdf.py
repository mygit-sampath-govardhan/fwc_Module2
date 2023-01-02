#6.1.1 PDF
import numpy as np
import mpmath as mp
import scipy 
import matplotlib.pyplot as plt
from math import exp
#if using termux
import subprocess
import shlex
#end if
#Importing numpy, scipy, mpmath and pyplot
import numpy as np
import matplotlib.pyplot as plt

#if using termux
import subprocess
import shlex
#end if



x = np.linspace(-5,5,30)    #points on the x axis

simlen = int(1e6)           #number of samples

err = []                    #declaring probability list

pdf = []
#randvar = np.random.normal(0,1,simlen)
randvar = np.loadtxt('T.dat',dtype='double')
#randvar = np.loadtxt('gau.dat',dtype='double')


for i in range(0,30):
	err_ind = np.nonzero(randvar < x[i]) #checking probability condition
	
	print(err_ind,x[i])
	err_n = np.size(err_ind) #computing the probability
	print(err_n)
	err.append(err_n/simlen) #storing the probability values in a list
	
for i in range(0,29):
	test = (err[i+1]-err[i])/(x[i+1]-x[i])
	pdf.append(test)
	
plt.plot(x.T[0:29],pdf)   #plotting the CDF
plt.grid()         #creating the grid
plt.xlabel('$x$')
plt.ylabel('$F_X(x)$')

#if using termux
#plt.savefig('../figs/uni_cdf.pdf')
#plt.savefig('../figs/uni_cdf.eps')
#subprocess.run(shlex.split("termux-open ../figs/uni_cdf.pdf"))
#if using termux
#plt.savefig('../figs/gauss_cdf.pdf')
#plt.savefig('../figs/gauss_cdf.eps')
#subprocess.run(shlex.split("termux-open ../figs/gauss_cdf.pdf"))
#else
plt.show() #opening the plot window



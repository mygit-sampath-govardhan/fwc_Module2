import numpy as np
import matplotlib.pyplot as plt
import math

maxlim = 20
maxrange = 50
x = np.linspace(-1, maxlim, maxrange) #points on x-axis
simlen = int(1e6) #number of samples
cdf = [] #declaring probability list
uni_randvar = np.loadtxt('../files/uni.dat',dtype='double')
tran_randvar = -2*np.log(1-uni_randvar)
p = 1-np.exp(-x/2)

for i in range(0,maxrange):
	cdf_ind = np.nonzero(tran_randvar < x[i]) #checking probability condition
	cdf_n = np.size(cdf_ind) #computing the probability
	cdf.append(cdf_n/simlen) #storing the probability values in a list

f=np.piecewise(x,[x<0,x>=0],[0,lambda p:p])

plt.scatter(f, cdf) #plotting CDF
plt.plot(x,cdf,'orange')
plt.grid() #creating the grid
plt.xlabel('$x_i$')
plt.ylabel('$F_X(x_i)$')
plt.legend(["Simulation","Analysis"])

plt.savefig('../../figs/log_uni_cdf.pdf')
plt.savefig('../../figs/log_uni_cdf.png')

#if using termux
#subprocess.run(shlex.split("termux-open ../../figs/chapter2/log_uni_cdf.pdf"))
#else
plt.show()

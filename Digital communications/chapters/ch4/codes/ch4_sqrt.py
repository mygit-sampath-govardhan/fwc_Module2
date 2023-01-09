import numpy as np
import matplotlib.pyplot as plt

#if using termux
#import subprocess
#import shlex
#end if


maxrange=100
maxlim=10.0
x = np.linspace(0,maxlim,maxrange)    #points on the x axis
simlen = int(1e6) #number of samples
err = [] #declaring probability list
pdf = [] #declaring pdf list
h = 2*maxlim/(maxrange-1);
x1_var = np.random.normal(0, 1, simlen)
x2_var = np.random.normal(0, 1, simlen)
v_var = np.sqrt(x1_var**2 + x2_var**2)

for i in range(0,maxrange):
	err_ind = np.nonzero(v_var < x[i]) #checking probability condition
	err_n = np.size(err_ind) #computing the probability
	err.append(err_n/simlen) #storing the probability values in a list
	
pdf = np.gradient(err, x, edge_order=2)

thpdf=np.piecewise(x, [x<0, x>=0], [0, lambda x: x*np.exp(-(x**2)/2)])

thcdf=np.piecewise(x, [x<0, x>=0], [0, lambda x: 1-np.exp(-(x**2)/2)])

plt.scatter(x.T,err)   #plotting the CDF numerical
plt.plot(x,thcdf,'orange') #plotting CDF theory
plt.grid()          #creating the grid
plt.xlabel('$x$')
plt.ylabel('$F_X(x)$')
plt.legend(["Simulation","Analysis"])

plt.savefig('../figs/ch4_sqrtcdf.pdf')
plt.savefig('../figs/ch4_sqrtcdf.png')

plt.show()
plt.close()
	
plt.scatter(x,pdf)             # plotting estimated PDF
plt.plot(x,thpdf,'orange')             # plotting theory PDF
plt.grid() #creating the grid
plt.xlabel('$x_i$')
plt.ylabel('$p_X(x_i)$')
plt.legend(["Simulation","Analysis"])

plt.savefig('../figs/ch4_sqrtpdf.pdf')
plt.savefig('../figs/ch4_sqrtpdf.png')

plt.show()


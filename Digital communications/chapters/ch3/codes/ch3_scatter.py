import numpy as np
import scipy.special as sp
import matplotlib.pyplot as plt

#if using termux
import subprocess
import shlex
#end if

num = 1000
x = np.random.binomial(1, 0.5, num)*2-1
n = np.random.normal(0, 1, num)
Adb = 3
A = 10**(0.1*Adb)
y = A*x + n

x0 = np.extract(x==1, x)
x1 = np.extract(x==-1, x)

n0 = np.extract(x==1, n)
n1 = np.extract(x==-1, n)

y0 = A*x0 + n0
y1 = A*x1 + n1

plt.plot(y0, np.zeros(y0.shape[0]), 'o', mfc='none')
plt.plot(y1, np.zeros(y1.shape[0]), 'o', mfc='none')
plt.plot(np.zeros(10), np.linspace(-0.1,0.1,10), color="red")
plt.grid()
plt.legend(["$y|0$","$y|1$"])

plt.savefig('/home/sam-admin/Desktop/iith/Module-2/sampractrice/Assignment digital comm/chapters/ch3/figs/ch3_scatter.pdf')
plt.savefig('/home/sam-admin/Desktop/iith/Module-2/sampractrice/Assignment digital comm/chapters/ch3/figs/ch3_scatter.png')

#if using termux
#subprocess.run(shlex.split("termux-open ../../figs/chapter3/bpsk_scatter.pdf"))
#else
plt.show() #opening the plot window

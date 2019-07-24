from pylab import *
from numpy import *
data = loadtxt("histoplotuvw.dat")
E,C = data[:,0], data[:,1]
# subplot(1, 2, 1)
plot (E,C,'ro')
axis ([0,1000,0,5])
# subplot(1, 2, 2)
# plot (E,C,'ro')
# axis ([0,1000,0,5])
show ()
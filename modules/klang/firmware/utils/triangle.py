    #!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sun Jan 12 12:33:29 2020

@author: etienne
"""

from pylab import*

#Fourier Series-Saw-tooth wave
#f(t)=a/2+a/pi[sin(wt)+sin(2wt)/2+sin(3wt)/3+sin(4wt)/4+sin(5wt)/5+........]

t=linspace(0.0,2*pi,1024)
a=1.0
w=1.0
y=a/2
for i in range(1,1024,1):
    y=y+2*a*sin(i*w*t)/(pi*i)
plot(t,y)
show()

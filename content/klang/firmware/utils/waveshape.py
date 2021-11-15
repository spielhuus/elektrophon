import numpy as np
import matplotlib.pyplot as plot
import math as Math

x = np.linspace(-np.pi, np.pi, 1024)

 # Get x values of the sine wave
#time        = np.arange(0, 10, 0.1);

# Amplitude of the sine wave is sine of a variable like time
#amplitude   = np.sin(time)

 # Plot a sine wave using time and amplitude obtained for the sine wave
#plot.plot(time, amplitude)


#sine table
plot.plot(x, (np.sin(x)))

plot.plot(x, (2*(np.sin(x))**2-1 +
              4*(np.sin(x))**3-3*(np.sin(x)) +
              8*(np.sin(x))**4-8*(np.sin(x)**2)+1)/3)

plot.title('Sine wave') 

# Give x axis label for the sine wave plot
plot.xlabel('Time')

# Give y axis label for the sine wave plot
plot.ylabel('Amplitude = sin(time)')
plot.grid(True, which='both')
plot.axhline(y=0, color='k')
plot.show()

rows = 0;
with open('out.txt', 'w') as f:
  print("float sine_table[] = {", file=f)
  for i in np.nditer(x):
    if rows > 7 :
      rows = 0
      print("", file=f)
    print("% f, " %(np.sin(i)+1), file=f, end = '')
    rows = rows + 1
  print("};", file=f)

import numpy as np
import matplotlib.pyplot as plot



#x = np.linspace(-np.pi, np.pi, 256)
x = np.linspace(-np.pi, np.pi, 1024)




 # Get x values of the sine wave
#time        = np.arange(0, 10, 0.1);

# Amplitude of the sine wave is sine of a variable like time
#amplitude   = np.sin(time)

 # Plot a sine wave using time and amplitude obtained for the sine wave
#plot.plot(time, amplitude)


plot.plot(x, np.sin(x)*(4095/2)+(4095/2))
# Give a title for the sine wave plot
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
  print("uint16_t sine_table[] = {", file=f)
  for i in np.nditer(x):
    if rows > 7 :
      rows = 0
      print("", file=f)
    print("% 4.0f, " %(np.sin(i)*(4095/2)+(4095/2)), file=f, end = '')
    rows = rows + 1
  print("};", file=f)

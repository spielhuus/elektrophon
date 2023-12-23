import numpy as np

rows = 0;
with open('out.txt', 'w') as f:
  print("uint32_t tunes[256] = {", file=f)
  for i in range(256):
    note = 1.0
    note = 440.0*((2.0)**(1.0/12.0))**(i-69.0)  
    increment = pow(2, 32) * note / (40000)
    print("% .0f, " %(increment), file=f, end = '')
    if rows > 7 :
      rows = 0
      print("", file=f)
    rows = rows + 1
    
  print("};", file=f)

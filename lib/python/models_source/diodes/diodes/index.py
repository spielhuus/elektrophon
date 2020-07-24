# BAV99 SPICE Model
# https://www.diodes.com/products/discrete/diodes-and-rectifiers/diodes/small-signal-switching-diodes/part/BAV99
Model('BAV99',
      mod = Patch('BAV99.spice.txt', 'BAV99.spice.diff',
                  '41628457630847fc81f1'))

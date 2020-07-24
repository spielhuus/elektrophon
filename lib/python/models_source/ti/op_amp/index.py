# LMH6624 PSPICE Model, 16 Jan 2012, http://www.ti.com/lit/zip/snom130
Model('LMH6624',
      mod = ('LMH6624.MOD', '4aece1f9b563edfeba11'),
      doc = 'LMH6624.txt')

# LMH6702 PSPICE Model, 16 Jan 2012, http://www.ti.com/lit/zip/snom144
Model('LMH6702',
      mod = ('LMH6702.MOD', '6611a8ea4cdbdfe436a9'),
      doc = 'LMH6702.txt')

# LMV981-N PSPICE Model, 16 Jan 2012, http://www.ti.com/lit/zip/snom030
Model('LMV981',
      mod = ('LMV981.MOD', '4d1e935bdcab07c3a559'),
      doc = 'LMV981.txt')

# OPAy695 PSpice Model (Rev. B), 26 may 2009, http://www.ti.com/lit/zip/sboc036
Model('OPA695',
      mod = Patch('OPA695_PSPICE_MODEL.txt', 'OPA695_PSPICE_MODEL.diff',
                  'a0004433d0ffa8145e9f'))

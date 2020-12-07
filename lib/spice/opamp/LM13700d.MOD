* A dual ota ngspice model
* file name: LM13700d.MOD
.subckt LM13700d 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
.include LM13700.MOD
XU1A 1 2 3 4 5 6 7 8 11 LM13700/NS
XU1B 16 15 14 13 12 6 10 9 11 LM13700/NS
.ends 

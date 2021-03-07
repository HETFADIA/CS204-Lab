.data
lab1: .word 1 2 3 4 5
.text
li x11,0x10000000
lw x12,0(x11)
lw x13,4(x11)

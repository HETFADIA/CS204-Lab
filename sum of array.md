.data
lab1: .word 1 2 3 4 5 6 7 8 9 10
.text
la x11,lab1 # x11 = auto i;
addi x12, x11,40 # x12 = word.end()
li x14,0
loop:
lw x13,0(x11)
add x14,x14,x13
addi x11,x11,4
beq x11,x12,exit
j loop
exit:# x14 contains sum


![image](https://user-images.githubusercontent.com/62541263/110232452-b1f39880-7f43-11eb-9855-9c816e5da7b5.png)

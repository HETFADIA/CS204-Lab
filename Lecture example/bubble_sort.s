# bubble sort

.data
arr: .word 10 9 8 7 6 5 4 3 2 1
length: .word 10
.text
lw x11,length # x11= arr.size()

la x13,arr # for(int x13=0;x13<n;x13++) x13 is the outer loop variable to be increased by 4 outside the loop
li x20,0
li x21,0
jal x1,bubble_sort
j exit
bubble_sort:
addi x11,x11,-1
la x13,arr
li x20,0
addi x14,x13,0 # for(int x14=x13;x14<n;x14++) x14 is the inner loop variabl to be increased by 4 in the loop
addi x21,x20,0
beq x20,x11,exit

loop:
addi x15,x14,4 # x14=j x15=j+1
beq x21,x11,out
lw x16,0(x14)
lw x17,0(x15)
ble x16,x17,continue

sw x16,0(x15)
sw x17,0(x14)

continue:
addi x14,x14,4
addi x21,x21,1
j loop



out:





addi x13,x13,4
addi x20,x20,1
j bubble_sort
exit:

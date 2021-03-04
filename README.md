# CS204-Lab

##### li x12,3 #load immediate value
##### addi x11,x12,0 # x11= x12 + immediate value


##### cpp to risc -v 
##### cpp if(a>b){a++}
##### risc v 
li x11,5
li x12,4
bgt x11,x12,label
beq x11,x11,exit
label: addi x11,x11,1
exit:



##### loading more than 12 bits
##### lui rd,immediate[19-0]

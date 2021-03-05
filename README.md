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


##### swap in risc v
##### cpp => swap(a,b);
##### risc v
li x11,2
li x12,3
add x11,x11,x12 # x=x+y
sub x12,x11,x12 # y=x-y
sub x11,x11,x12 # x=x-y

![image](https://user-images.githubusercontent.com/62541263/109992434-45a14b00-7d31-11eb-87d0-4e917d7078a1.png)


li x20, 0x10000000 # Address
li x21, 0xdeadbeef # Data
sw x21, 0(x20) # Mem[x20+0] = x21
![image](https://user-images.githubusercontent.com/62541263/110138906-7ac4a080-7df8-11eb-8a09-c5c2f4f258a1.png)




main:
beq x0,x0,exit
li x11,1
exit:



.data
var1: .byte 10
var2: .byte 20
var3: .word 0xffffffff
.text
#commands text me ate hai

lw x1, var1

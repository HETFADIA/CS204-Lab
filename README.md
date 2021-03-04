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

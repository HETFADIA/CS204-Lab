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


![image](https://user-images.githubusercontent.com/62541263/110142459-32a77d00-7dfc-11eb-9bd3-2f7375b3182b.png)




li x11,11 # i=10
li x12,10 # j = 10
li x13,11 # g=11
li x14,9  # h=9
beq x11,x12,label
sub x15,x13,x14
beq x11,x11,exit
label:
add x15,x13,x14
exit:


Task 4 lab 3
.data
lab1: .word 10, -20, 30, 40, 5

.text

la x11,lab1
lw x12,0(x11)
lw x13,4(x11)
lw x14,8(x11)
lw x15,12(x11)
lw x16,16(x11)



Task 4 lab 3
.data
lab1: .word 2,3,4,5,6,7,8,9,0,1

.text
la x11,lab1 # v.begin()
addi x20,x11,40 #final address v.end()
li x21,0 #lld suma
loop:
lw x12,0(x11)
addi x11,x11,4
add x21,x21,x12
beq x11,x20,exit #address==final address=>exit
j loop

exit:
![image](https://user-images.githubusercontent.com/62541263/110162915-5d51ff80-7e15-11eb-88f4-9b33913c5386.png)


.data
lab1: .word 1,-1,1,-1,1,-1,1,-1,1,-2

.text
la x11,lab1 # v.begin()
addi x20,x11,40 #final address v.end()
li x21,0 #lld suma
li x22,0 # comparator storer a>0?
loop:
lw x12,0(x11)
addi x11,x11,4
bgt x12,x0,negative_found
add x21,x21,x12
negative_found:
beq x11,x20,exit #address==final address=>exit
j loop
exit:
![image](https://user-images.githubusercontent.com/62541263/110163893-a8b8dd80-7e16-11eb-8f5f-2a77c9262c2d.png)


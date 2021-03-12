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

.data
lab1: .word 6,-1,1,-1,1,-1,1,-1,1,-2

.text
la x11,lab1 # v.begin()
addi x20,x11,40 #final address v.end()
li x21,0 #lld suma
li x22,5 # comparator storer a>0?
loop:
lw x12,0(x11)
addi x11,x11,4
ble x12,x22,less_than_five_found
add x21,x21,x12
less_than_five_found:
beq x11,x20,exit #address==final address=>exit
j loop
exit:
![image](https://user-images.githubusercontent.com/62541263/110164158-fb929500-7e16-11eb-99be-07b008c0f599.png)


.data
lab1: .asciiz "a"
.text
la x11,lab1
lw x12,lab1
addi x12,x12,-32
sw x12,0(x11)

![image](https://user-images.githubusercontent.com/62541263/110232647-f9c6ef80-7f44-11eb-82b9-38c5f1de03a3.png)
![image](https://user-images.githubusercontent.com/62541263/110232656-02b7c100-7f45-11eb-95a6-3d80d4e29fa5.png)


.data
lab: 
.asciiz "abcdefghijklmnopqrst" 
.asciiz "hithere"
.text
li x13,28 # x12 = len(lab)
la x11,lab # auto i => x11
add x14,x11,x13 # x14=v.end()
loop:
lb x12,0(x11) # x12= *i         auto i = v.begin(); i!=v.end(); 
addi x12,x12,-32 # value -=32 
sb x12,0(x11) # v[i]=value
addi x11,x11,1 # i++
beq x11,x14,exit # if(i== v.end()) {break;}
j loop
exit:
![image](https://user-images.githubusercontent.com/62541263/110250493-7be50180-7fa1-11eb-9741-5536e0283c84.png)

![image](https://user-images.githubusercontent.com/62541263/110250796-5eb13280-7fa3-11eb-80b4-552538e04708.png)



factorial code 
li x10,10
jal x1,fact
j exit
fact:
addi sp,sp,-8
sw x10,4(sp)
sw x1,0(sp)
li x11,1
bgt x10,x11,l1
li x10,1
addi sp,sp,8
jalr x0,x1,0

l1:
addi x10,x10,-1
jal x1,fact
add x6,x10,x0
lw x1,0(sp)
lw x10,4(sp)

mul x10,x10,x6
addi sp,sp,8
jalr x0,x1,0
exit:
![image](https://user-images.githubusercontent.com/62541263/110898342-125c4e80-8325-11eb-9e86-3e32e5dc39e3.png)






li x10,7
jal x1,fib
j exit
fib:
addi sp,sp,-8
sw x1,4(sp)
sw x10,0(sp)
li x11,1
bgt x10,x11,l1

addi sp,sp,8
jalr x0,x1,0

l1:
addi x10,x10,-1
jal x1,fib
add x6,x10,x0


lw x10,0(sp)
addi x10,x10,-2
addi sp,sp,-4
sw x6,0(sp)
jal x1,fib
lw x6,0(sp)
addi sp,sp,4
add x10,x10,x6
lw x1,4(sp)

addi sp,sp,8
jalr x0,x1,0
exit:
![image](https://user-images.githubusercontent.com/62541263/110899009-53089780-8326-11eb-9f48-6cab53ad7ab6.png)








.data
array: .word 1 2 3 4 5 6 7 8 9 10
s: .word 1
length: .word 10

.text
la x11,array # x11 = array.begin()
lw x12,s # x12=target
lw x13,length # x13=array.size()
li x14,0 # x14=low
add x15,x13,x0
addi x15,x15,-1 # x15=high
li x19,-1 # x19=answer  initialized to -1
jal x1,binary_search
j exit
binary_search:
add x16,x14,x15 # x16=low+high
srli x16,x16,1 # x16=(low+high)/2=mid
slli x17,x16,2 # x17=4*mid
add x17,x17,x11 # x17= &arr[mid]
lw x18,0(x17) # x18=arr[mid]
beq x18,x12,found
blt x18,x12,increment_low # if arr[mid] < target then low=mid+1 as the target is after mid for sure
j decrement_high
found:
addi x19,x16,1 # found on mid and 1 added to make one based indexing
j exit
decrement_high:
addi x15,x16,-1 # high = mid-1
j binary_search
increment_low:
addi x14,x16,1 # low= mid+1

j binary_search

exit:
![image](https://user-images.githubusercontent.com/62541263/110905075-eb574a00-832f-11eb-9980-862003cd6675.png)

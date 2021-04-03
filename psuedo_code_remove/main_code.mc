.data
array: .word 1 2 4 7 8 9 10 15 17 19
length: .word 0
s: .word 10

.text
la x11,array
lw x12,length
lw x13,s
li x14,0 # x14=low
addi x15,x12,-1 # x15=high=length-1
li x17,-1 # x17=answer
li x22,1 # x22=1
j binary_search
binary_search:
bgt x14,x15,exit   # if low>high {break;}
add x16,x14,x15 # mid= high + low
srli x16,x16,1 # mid= high+low/2
slli x18,x16,2 #x18=4*mid
add x18,x18,x11 # x18=&arr[mid]
lw x18,0(x18)
beq x18,x13,found # if arr[mid]== s: goto found

bgt x13,x18,inc_low
j decrement_high
inc_low:
addi x14,x16,1 # low=mid+1
j binary_search
decrement_high:
addi x15,x16,-1 # high = mid-1
j binary_search
found:
add x17,x16,x0 # x17 is mid as we found it there
addi x17,x17 ,1 # to make it one based indexing
exit:
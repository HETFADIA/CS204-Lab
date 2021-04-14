li x10,5 # n=4;
jal x1,fact
j out
fact:
# return n*fact(n-1) if n else 1
addi sp,sp,-8 # stack has two spaces now
sw x10,0(sp) # storing value of x10
sw x1,4(sp) # stroing value of return address
li x11,1 # checking base condition
bge x10,x11,l1 # if x10>=1 return n*fact(n-1) 
li x10,1 # x10=1
addi sp,sp,8 # stack.pop() stack.pop()
jalr x0,x1,0 # return 1 to the return address 
# # the return address is avail as we have not gone to l1 at this fact

l1:
# return n*(n-1)
addi x10,x10,-1 # x10=n-1
jal x1,fact #x10=fact(n-1)
add x6,x10,x0 # x6=fact(n-1)
lw x10,0(sp) # x10=n;
mul x10,x6,x10 # x10=n*fact(n-1)
lw x1,4(sp)
addi sp,sp,8
jalr x0,x1,0
out:

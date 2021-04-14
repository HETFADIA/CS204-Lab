# void fib(n)
# return fib(n-1) + fib(n-2) if n>=2
# return fib(1) if n==1 else fib(0)
.data
number: .word 4
fib_zero: .word 3
fib_one: .word 5
.text
lw x10,number
lw x11,fib_zero
lw x12,fib_one
jal x1,fib
j exit_prog
fib:
addi sp,sp,-8 # stack has two size now
sw x10,0(sp)
sw x1,4(sp)
li x13,1
bgt x10,x13,l1
addi sp,sp,8
beq x10,x0,zero
j one
zero:
lw x10,fib_zero
j out
one: 
lw x10,fib_one
out:
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
lw x1,4(sp)
addi sp,sp,8
add x7,x10,x0
add x10,x7,x6
jalr x0,x1,0
exit_prog:

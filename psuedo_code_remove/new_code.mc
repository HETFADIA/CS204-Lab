auipc x11 65536
addi x11 x11 0
auipc x12 65536
lw x12 32(x12)
auipc x13 65536
lw x13 28(x13)
addi x14 x0 0
addi x15 x12 -1
addi x17 x0 -1
addi x22 x0 1
j binary_search
blt x15 x14 60
add x16 x14 x15
srli x16 x16 1
slli x18 x16 2
add x18 x18 x11
lw x18 0(x18)
beq x18 x13 28
blt x18 x13 8
j decrement_high
addi x14 x16 1
j binary_search
addi x15 x16 -1
j binary_search
add x17 x16 x0
addi x17 x17 1

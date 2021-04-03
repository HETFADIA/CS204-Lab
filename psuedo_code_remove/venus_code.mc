0x0	0x10000597	auipc x11 65536	la x11,array
0x4	0x00058593	addi x11 x11 0	la x11,array
0x8	0x10000617	auipc x12 65536	lw x12,length
0xc	0x02062603	lw x12 32(x12)	lw x12,length
0x10	0x10000697	auipc x13 65536	lw x13,s
0x14	0x01C6A683	lw x13 28(x13)	lw x13,s
0x18	0x00000713	addi x14 x0 0	li x14,0 # x14=low
0x1c	0xFFF60793	addi x15 x12 -1	addi x15,x12,-1 # x15=high=length-1
0x20	0xFFF00893	addi x17 x0 -1	li x17,-1 # x17=answer
0x24	0x00100B13	addi x22 x0 1	li x22,1 # x22=1
0x28	0x0040006F	jal x0 4	j binary_search
0x2c	0x02E7CE63	blt x15 x14 60	bgt x14,x15,exit # if low>high {break;}
0x30	0x00F70833	add x16 x14 x15	add x16,x14,x15 # mid= high + low
0x34	0x00185813	srli x16 x16 1	srli x16,x16,1 # mid= high+low/2
0x38	0x00281913	slli x18 x16 2	slli x18,x16,2 #x18=4*mid
0x3c	0x00B90933	add x18 x18 x11	add x18,x18,x11 # x18=&arr[mid]
0x40	0x00092903	lw x18 0(x18)	lw x18,0(x18)
0x44	0x00D90E63	beq x18 x13 28	beq x18,x13,found # if arr[mid]== s: goto found
0x48	0x00D94463	blt x18 x13 8	bgt x13,x18,inc_low
0x4c	0x00C0006F	jal x0 12	j decrement_high
0x50	0x00180713	addi x14 x16 1	addi x14,x16,1 # low=mid+1
0x54	0xFD9FF06F	jal x0 -40	j binary_search
0x58	0xFFF80793	addi x15 x16 -1	addi x15,x16,-1 # high = mid-1
0x5c	0xFD1FF06F	jal x0 -48	j binary_search
0x60	0x000808B3	add x17 x16 x0	add x17,x16,x0 # x17 is mid as we found it there
0x64	0x00188893	addi x17 x17 1	addi x17,x17 ,1 # to make it one based indexing
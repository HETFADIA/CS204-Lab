addi sp , sp ,-24
li x11,11
li x12,12
li x13,13
sw x11,24(sp)
sw x12,16(sp)
sw x13,8(sp)

li x11,1000
li x12,1000
addi sp,sp , 8
lw x13,0(sp)
addi sp ,sp ,8
lw x12,0(sp)
addi sp,sp,8
lw x11,0(sp)
![image](https://user-images.githubusercontent.com/62541263/110239014-c72fed80-7f6a-11eb-85ff-03d73dd919d1.png)

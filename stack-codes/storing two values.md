
addi sp , sp ,-16
li x11,10
li x12,1
sw x11,16(sp)
sw x12,8(sp)


li x11,1000
li x12,1000
addi sp,sp , 8
lw x12,0(sp)
addi sp ,sp ,8
lw x11,0(sp)
![image](https://user-images.githubusercontent.com/62541263/110239043-ec246080-7f6a-11eb-9a8d-6bb2e5a1ddc1.png)

addi sp , sp ,-16
li x11,10
li x12,1
sw x11,8(sp)
sw x12,16(sp)

li x11,1000
li x12,1000
addi sp,sp , 8
lw x12,0(sp)
addi sp ,sp ,8
lw x11,0(sp)
![image](https://user-images.githubusercontent.com/62541263/110238506-07da3780-7f68-11eb-9235-884ac02e0390.png)

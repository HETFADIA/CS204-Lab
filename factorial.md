li x11,10 # n=10 and we wanna find 10!
li x12,1 # res= x12 we are gonna store result in x12
factorial:
mul x12,x12,x11
addi x11,x11,-1
beq x11,x0,exit
j factorial
exit:

![image](https://user-images.githubusercontent.com/62541263/110165624-34cc0480-7e19-11eb-842b-ee26bbc6305b.png)


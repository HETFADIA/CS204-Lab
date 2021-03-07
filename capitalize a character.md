.data
lab1: .asciiz "a"
.text
la x11,lab1
lw x12,lab1
addi x12,x12,-32
sw x12,0(x11)

![image](https://user-images.githubusercontent.com/62541263/110232647-f9c6ef80-7f44-11eb-82b9-38c5f1de03a3.png)
![image](https://user-images.githubusercontent.com/62541263/110232656-02b7c100-7f45-11eb-95a6-3d80d4e29fa5.png)

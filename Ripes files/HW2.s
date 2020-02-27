.data 
A: .word 0,1,2,3,4,5
B: .word 0,0,0,0,0,0
.text

li x5, 6
li x6, 2
la x10, A
la x11, B
li x7, 0
li x29, 0

sw x0, 0(s0)
addi s1, x0, 0
sw x1, 0(s2)
addi s3,x1,0
addi x3, x0, 4

loopi:
beq x7, x29, ENDi
mul x29,x29,x3
add x7, x7, x29
add s3, s1, x29
jal x6,loopi

loopj: beq x7, x7, ENDj
jal x5,loopi

ENDj:
addi x7, x7,1
jal x0, loopi

ENDi:
	exit:
	   nop


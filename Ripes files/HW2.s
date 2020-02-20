.data
A: .word 0,1,2,3,4,5
B: .word 0,0,0,0,0,0
.text
li x5, 6
li x6,2 
la x10, A
la x11, B
li x7, 0
li x29, 0

start:
add x7, x0, x0
add x29, x0, x0
addi x4, x0, 4

loopji:
beq x7, x5,END
beq x29, x6, loopji
mul x1, x29, x4
mul x8, x7, x3
addi x29, x29, 1
addi x7,x7,1
lw x28, x1(x11)


END:












.global maxSubarray

# ll* arr in %rdi, ll n in %rsi
maxSubarray:
    movq $0, %rax # ll count = 0, count in %rax
    movq $0, %r8 # i = 0, i in %r8

outerLoop:
    cmpq %r8, %rsi # checking n - i
    je return
    movq %r8, %r9 # j = i, j in %r9
    movq $0, %r10 # sum = 0, sum in %r10
    jmp innerLoop

innerLoop:
    cmpq %r9, %rsi
    je nextOuterLoop
    addq (%rdi, %r9, 8), %r10
    testq %r10, %r10
    jne nextInnerLoop
    addq $1, %rax
    addq $1, %r9
    jmp innerLoop

nextInnerLoop:
    addq $1, %r9
    jmp innerLoop

nextOuterLoop:
    addq $1, %r8
    jmp outerLoop

return:
    ret










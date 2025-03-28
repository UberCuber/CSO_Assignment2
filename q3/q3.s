.global NGR

# ll* arr in %rdi, ll n in %rsi, ll* stack in %rdx, ll* output in %rcx
NGR:
    movq $-1, %r8 # top = -1, in %r8
    subq $1, %rsi # i = n-1, stored in %rsi

forLoop:
    cmpq $0, %rsi # comparing i - 0
    jl return

whileLoop:
    cmpq $0, %r8 # comparing top and 0
    jl continueForLoop
    movq (%rdx, %r8, 8), %r9 # stores stack[top] in %r9
    movq (%rdi, %rsi, 8), %r10 # stores arr[i] in %r10
    cmpq %r9, %r10
    jle continueForLoop
    subq $1, %r8
    jmp whileLoop    

continueForLoop:
    cmpq $-1, %r8 # compare top and -1
    jne elseStatement
    movq $-1, (%rcx, %rsi, 8)
    jmp endForLoop
    

elseStatement:
    movq (%rdx, %r8, 8), %r11
    movq %r11, (%rcx, %rsi, 8) # output[i] = stack[top] 
    jmp endForLoop

endForLoop:
    addq $1, %r8
    movq (%rdi, %rsi, 8), %r11
    movq %r11, (%rdx, %r8, 8)
    subq $1, %rsi
    jmp forLoop

return:
    ret

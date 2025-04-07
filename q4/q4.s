.global majorityElement

# ll* arr in %rdi, ll n in %rsi
majorityElement:
    movq $0, %r8 # count = 0 in r8
    movq $0, %r9 # i = 0 in %r9

forLoop:
    cmpq %r9, %rsi
    jle return
    testq %r8, %r8
    jne nextIf
    movq (%rdi, %r9, 8), %rax

nextIf:
    cmpq (%rdi, %r9, 8), %rax
    jne nextIfElse
    incq %r8
    incq %r9
    jmp forLoop

nextIfElse:
    decq %r8
    incq %r9
    jmp forLoop

return:
    ret

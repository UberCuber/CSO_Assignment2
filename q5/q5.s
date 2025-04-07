.global peakValue

peakValue:
    movq $0, %r8          # lp = 0
    movq %rsi, %r9
    decq %r9             # rp = n-1

whileLoop:
    cmpq %r8, %r9
    jl return
    movq %r8, %r10
    addq %r9, %r10
    sar $1, %r10        # mid = (lp + rp)/2

    testq %r10, %r10
    je firstElse
    movswq -2(%rdi, %r10, 2), %r11 # left = arr[mid-1]
    
secondIf:
    movq %rsi, %rcx
    decq %rcx           # n-1
    cmpq %r10, %rcx
    je secondElse
    movswq 2(%rdi, %r10, 2), %r12 # right = arr[mid+1]

thirdIf:
    movswq (%rdi, %r10, 2), %rax  # load arr[mid] into %rax
    cmpq %rax, %r11      
    jg finalOuterElse
    cmpq %rax, %r12      
    jg finalOuterElse
    jmp return   

firstElse:
    movw $-32768, %r11w  
    movswq %r11w, %r11 
    jmp secondIf

secondElse:
    movw $-32768, %r12w 
    movswq %r12w, %r12  
    jmp thirdIf

finalOuterElse:
    cmpq %r11, %r12
    jl finalInnerElse
    leaq 1(%r10), %r8    # lp = mid + 1
    jmp whileLoop

finalInnerElse:
    leaq -1(%r10), %r9   # rp = mid - 1
    jmp whileLoop

return:
    ret

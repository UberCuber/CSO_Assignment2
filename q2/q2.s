.global nChooser

# ll n in %rdi, ll r in %rsi
nChooser:
    testq %rsi, %rsi
    jne recursion
    movq $1, %rax;
    ret;

recursion:
    pushq %rdi # push n to stack
    pushq %rsi # push r to stack
    subq $1, %rdi
    subq $1, %rsi
    call nChooser
    pop %rsi # get value of r back
    pop %rdi # get value of n back
    imulq %rdi, %rax
    cqto
    idivq %rsi
    ret




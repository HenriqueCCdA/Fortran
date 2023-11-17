! A simple demonstration of Logical and Relational Operators

program rel_logic

    implicit none
    integer :: a, b
    logical :: m, n

    a = 4
    b = 5
    m = .true.
    n = .false.

    print *, "A = ", a, ", B = ", b
    print *, "A == B? :", a==b
    print *, "B > B? :", a>b
    print *, "A < B? :", a<b
    print *, "A >= B? :", a>=b
    print *, "A <= B? :", a<=b
    print *, "A /= B? :", a/=b

    print *, "M = ", m ," N = ", n
    print *, ".not. M=", .not. m
    print *, "M or N? :", m .or. n
    print *, "M and N? :", m .and. n
    print *, "M eqv N? :", m .eqv. n
    print *, "M eqv N? :", m .neqv. n

end program rel_logic

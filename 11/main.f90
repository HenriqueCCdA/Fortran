program main
    implicit none
    integer i
    integer, dimension(10) :: x, y, z
    real, dimension(10, 10) :: a, b, c

    c = 0.d0
    call random_number(a)

    print "(10f7.4)", a

    L1: where (a < 0.5)
        c = a
    end where L1
    print *, new_line("")
    print "(10f7.4)", c


    x = [(i,i=1,10)]
    y = x(10:1:-1)
    z = 0
    where ( x > 5 )
        z = sum(x)
    else where (x == 3)
        z = 99
    else where
        z = -1
    end where

    print "(10i3)", z

end program main

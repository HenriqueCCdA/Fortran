program formats

    implicit none
    integer :: a
    real :: ar

    read 5, a, ar
    5 format(i6, f8.3)

    10 format("with formating", i5, 4x, f5.2)

    print 10, a, ar
    print *, "Without  formatting", a, ar

end program formats

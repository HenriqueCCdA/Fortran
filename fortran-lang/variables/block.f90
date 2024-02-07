module your_module
    implicit none
    integer :: n = 2
end module your_module

program main
    implicit none
    real :: x

    block
        use your_module, only: n
        real :: y
        y = 2.0
        x = y ** n
        print *, y
    end block
    print *, x
end program main

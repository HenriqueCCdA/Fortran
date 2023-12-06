program fib_array
    implicit none
    integer(kind=16), allocatable, dimension(:) :: fib_vals
    integer :: i, n

    read *, n
    print 5, n
    5 format("Enter the number of values in fibonacci series to be displayed", i3)

    allocate(fib_vals(n))

    fib_vals(1) = 1
    fib_vals(2) = 1

    do i=3, n
        fib_vals(i) = fib_vals(i-1) + fib_vals(i-2)
    enddo

    do i=1, n
        print 10, i, fib_vals(i)
        10 format("The fibonacci value", i4, " is:", i40)
    enddo

    deallocate(fib_vals)

end program fib_array

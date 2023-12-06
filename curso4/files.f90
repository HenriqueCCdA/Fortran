program fib_array
    implicit none
    integer(kind=16), allocatable, dimension(:) :: fib_vals, c_vals
    integer, allocatable, dimension(:) :: nvals
    integer :: i, n

    read *, n
    print 5, n
    5 format("Enter the number of values in fibonacci series to be displayed", i3)

    allocate(fib_vals(n), c_vals(n), nvals(n))

    open(unit=1, file="fib_val.txt")
    15 format(i3, 5x, i25)

    fib_vals(1) = 1
    fib_vals(2) = 1

    do i=3, n
        fib_vals(i) = fib_vals(i-1) + fib_vals(i-2)
    enddo

    do i=1, n
        print 10, i, fib_vals(i)
        10 format("The fibonacci value", i4, " is:", i40)
        write(unit=1, fmt=15) i, fib_vals(i)
    enddo

    close(unit=1)
    open(unit=2, file="fib_val.txt")

    do i=1, n
        read(unit=2, fmt=15) nvals(i), c_vals(i)
        print *, "i = ", i, "i - n = ", i - nvals(i), " fib-fib-check = ", fib_vals(i) - c_vals(i)
    enddo

    deallocate(fib_vals, c_vals, nvals)
    close(unit=1)

end program fib_array

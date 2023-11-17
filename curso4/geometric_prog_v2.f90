! Program ro demostrate do loops via geometric progression

program geo_prog

    implicit none
    integer(kind=8) :: a, r, i, n

    print *, "Enter the value of initial term, a and factor, t:"
    read *, a, r
    print *, "Enter the number of terms:"
    read *, n

    do i=1, n
        print *, "The ", i, " of the series is:", a*(r**i)
    enddo

end program geo_prog

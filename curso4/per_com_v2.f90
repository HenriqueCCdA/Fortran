program percom
    implicit none
    integer*8, external :: per, comm, com, comb
    integer*8 :: n, r, per1, com1, com2, com3

    print *, "Enter the value of n:"
    read *, n
    print *, "Enter the value of r:"
    read *, r

    per1 = per(n, r)
    com1 = com(per1, r)
    com2 = com(n, r)
    com3 = comb(n , r)

    print *, "The permutation of ", r, " in ", n, ":", per1
    print *, "The combination1 of ", r, " in ", n, ":", com1
    print *, "The combination2 of ", r, " in ", n, ":", com2
    print *, "The combination2 of ", r, " in ", n, ":", com3

    contains
    recursive function fact(n) result(fact1)
        implicit none
        integer*8, intent(in) :: n
        integer*8 :: fact1

        if(n == 1 .or. n == 0) then
            fact1 = 1
            return
        else
            fact1 = fact(n-1)
            fact1 = fact1 * n
            return
        end if
    end function fact

end program percom

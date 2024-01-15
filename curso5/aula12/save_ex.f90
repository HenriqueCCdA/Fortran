module fact2

    implicit none

    contains

    recursive integer(8) function fact(n, debug) result(f1)
        implicit none
        integer :: counter
        integer(8), intent(in) :: n
        integer, intent(in), optional :: debug
        ! save counter

        counter = counter + 1
        print *, "Counter = ", counter

        if(n<=1) then
            if(present(debug)) then
                if(debug == 1) print *, "n value is:", n
            end if
            f1 = 1
            return
        else
            if(present(debug)) then
                if(debug == 1) then
                    print *, "n value is:", n
                    f1 = fact(n-1, debug)
                    f1 = f1 * n
                    return
                end if
            end if
            f1 = fact(n-1)
            f1 = f1 * n
        end if

    end function fact


end module fact2

program facto

    use fact2
    implicit none
    integer(4) :: debug = 0
    integer(8) :: n, nf, i

    ! counter = 0

    print *, "Enter the value of n"
    read *, n

    do i=1,n
        nf = fact(i, debug)
        print *, "The value of ", i, "! is = ", nf
    end do

    ! print *, "The total number of function calls:", counter

end program facto

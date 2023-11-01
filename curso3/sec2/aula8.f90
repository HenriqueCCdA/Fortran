program complicated_expression
    implicit none

    integer, parameter :: x = 3
    integer, parameter :: y = 4

    print *, (sin(0.5 - 0.5) * x + fib(5) * y - 2 ** 3) / 2
contains
    recursive function fib(n) result(fib_)
        integer, intent(in) :: n
        integer :: fib_

        if (n == 1) then
            fib_ = 1
        else if (n == 2) then
            fib_ = 1
        else
            fib_ = fib(n-1) + fib(n-2)
        endif
    end function fib
end program complicated_expression

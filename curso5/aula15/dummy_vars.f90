program dummy_vars
    implicit none
    integer :: p = 3
    real :: v = 3.0, pow

    real, external :: power, poly
    real :: x = 5, poly_val
    integer, parameter :: n = 2
    real, dimension(0:n) :: a

    a = (/1, 2, 1/)

    pow = power(v, p)
    poly_val = poly(x, a, n)

    print *, "The power ", p, " of ", v, " is:", pow
    print *, "The coefficients ot the polynomial are ", a
    print *, "The value of the polynomial at x = ", x, " is:", poly_val

end program dummy_vars

real function poly(x, a, n)

    implicit none
    integer, intent(in) :: n
    real, intent(in) :: x
    real, intent(in), dimension(0:n) :: a
    integer :: i

    do i=0, n
        poly = poly + a(i)*x**(i)
    end do

end function poly

real function power(x, n)
    implicit none
    integer, intent(in) :: n
    real, intent(in) :: x
    integer :: i
    power = 1.0

    do i=n, 1, -1
        power = x * power
    end do
end function power

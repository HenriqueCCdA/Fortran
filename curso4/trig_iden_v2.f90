program trigs
    implicit none
    integer :: i
    integer, parameter :: n = 100
    real(kind=8), dimension(0:n) :: x, sinx, cosx, secx, tanx, cscx, cotx, sin2x, cos2x, tan2x, sec2x, csc2x, cot2x
    real(kind=8), parameter :: pi = 2*asin(1.0)
    real(kind=8) :: increment

    increment = 2 * pi / real(n)

    x(0:n) = [(i*increment, i=0, n)]

    sinx = sin(x)
    cosx = cos(x)
    tanx = tan(x)
    cscx = 1.0 / sinx
    secx = 1.0 / cosx
    cotx = 1.0 / tanx
    sin2x = sinx**2
    cos2x = cosx**2
    tan2x = tanx**2
    csc2x = cscx**2
    sec2x = secx**2
    cot2x = cotx**2

    25 format("The value of sin²(x) + cos²(x) at", f10.4, " degrees is: ", f10.4)
    35 format("The value of sec²(x) - tan²(x) at", f10.4, " degrees is: ", f10.4)
    45 format("The value of csc²(x) - cot²(x) at", f10.4, " degress is: ", f10.4)

    do i = 0, n
        print 25, (x(i)/pi)*180, sin2x(i) + cos2x(i)
        print 35, (x(i)/pi)*180, sec2x(i) - tan2x(i)
        print 45, (x(i)/pi)*180, csc2x(i) - cot2x(i)
    end do

end program

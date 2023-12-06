program trigs
    implicit none
    integer :: i
    integer, parameter :: n = 100
    real(kind=8), dimension(0:n) :: x, sinx, cosx, secx, tanx, cscx, cotx, sin2x, cos2x, tan2x, sec2x, csc2x, cot2x
    real(kind=8), parameter :: pi = 2*asin(1.0)
    real(kind=8) :: increment

    increment = 2 * pi / real(n)

    do i=0, n
        x(i) =  i*increment
    enddo

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

    15 format("The Sine of ", f10.4, " is: ", f10.4)
    20 format("Then Sine square of ", f10.4, " degrees is: ", f10.4 )
    10 format(f10.4, 5x, f10.4, 5x, f10.4)

    open(unit=1, file="sinx.txt")
    do i = 0, n
        ! print 15, x(i), sinx(i)
        print 20, x(i), sin2x(i)
        write(unit=1, fmt=10) (x(i)/pi)*180.0, sinx(i), sin2x(i)
    end do

    close(unit=1)

end program

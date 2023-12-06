program trigs
    implicit none
    integer :: i
    integer, parameter :: n = 100
    real(kind=8), dimension(0:n) :: x, sinx, cosx, secx, tanx, cscx, cotx
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

    15 format("The Sine of ", f10.4, " is: ", f10.4)

    do i = 0, n
        print 15, x(i), sinx(i)
    end do

end program

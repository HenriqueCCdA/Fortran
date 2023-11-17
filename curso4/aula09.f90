! Program to find the length and angle of a line connecting the given point
! and the origin in an x-y plane. Also, we will find the quandrant of the point

program quadrant
    implicit none
    real :: x, y, l, a
    real, parameter :: pi = 4.d0 * atan(1.d0)
    character :: q

    print *, "Enter the values of co-ordinates, x and y:"
    read *, x, y

    !l = (x**2 + y**2)**0.5
    l = sqrt(x**2 + y**2)

    print *, " l = ", l
    a = atan(y/x) * 180.0 / pi
    print *, " a = ", a

    if (x >= 0 .and. y>=0) then
        q = '1'
    else if(x <= 0 .and. y >= 0) then
        q = '2'
    else if(x <= 0 .and. y <= 0) then
        q = '3'
    else
        q = '4'
    end if

    print *, "The point is in quadrant: ", q
end program quadrant

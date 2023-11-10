program rk2
    implicit none
    integer::n
    real::h,k1,k2,x,y

    h = 0.001
    x = 0.0
    y = 0.0

    do n = 1, 1000
        x = x + h

        k1 = h * F(x, y)
        k2 = h * F(x+h, y+k1)

        y = y + 0.5*(k1 + k2)

        Print*, x, y
    end do

    contains

        function F(x, y)
            implicit none
            real::f,x,y

            f = y - 1.0
        end function

end program

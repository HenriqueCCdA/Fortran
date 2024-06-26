program area_qt
    implicit none
    real*8 :: area
    character :: fig
    real*8, external :: tri, sq
    real*8 :: a, b, c, s, l, w

    print *, "This program calculates the are of a square/triangle or a rectangle"
    print *, "Type 's' for square and type 't' for triangle and 'r' for a rectangle"

    read *, fig

    if(fig == 't' .or. fig == 'T') then
        print *, "Enter the sides of  the tiangle"
        read *, a, b, c
        area = tri(a, b, c)
        print *, "The are of the Triangle is:", area
    else if (fig == 's' .or. fig == 'S') then
        print *, "Enter the side of the square"
        read *, s
        area = sq(s)
        print *, "The are of the Square is:", area
    else if (fig == 'r' .or. fig == 'R') then
        print *, "Enter the side of the square"
        read *, l, w
        area = rect(l, w)
        print *, "The are of the Square is:", area
    else
        print *, "Invalid Option, terminating program"
    endif

    contains

    real*8 function rect(l, w)
        implicit none
        real*8, intent(in) :: l, w

        print *, "The sides are:"
        rect = l * w
    end function rect

end program area_qt

real*8 function tri(a, b, c)
    implicit none
    real*8, intent(in) :: a, b, c
    real*8 :: s

    s = 0.5d0 * (a + b + c)
    tri = (s * (s - a) * (s - b) * (s -c)) ** 0.5

    print *, "The sides are:"
    print *, a, b, c

end function tri

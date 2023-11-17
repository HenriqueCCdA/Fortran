! Program to find the perimeter and area of a  triangle using Hero's formula

program triangle_area
    implicit none
    real :: a, b, c, s, p, Area

    a = 3
    b = 4
    c = 5

    p = a+b+c
    s = p/2

    Area = (s*(s-a)*(s-b)*(s-c))**0.5

    print *, "The perimeter of the triangle is:", p
    print *, "The area of the triangle is:", Area

end program triangle_area

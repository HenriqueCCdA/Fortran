! Program to find the perimeter and area of a  triangle using Hero's formula

program triangle_area
    implicit none
    real :: a, b, c, s, p, Area

    print *, "Enter the Silder of the triangle!"
    read *, a, b, c

    p = a+b+c
    s = p/2

    Area = (s*(s-a)*(s-b)*(s-c))**0.5

    print *, "The sides of the triangle are:"
    print *, "A = ", a, " B = ", b, " C = ", c
    print *, "The perimeter of the triangle is:", p
    print *, "The area of the triangle is:", Area

end program triangle_area

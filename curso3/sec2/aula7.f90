program variables_example
    implicit none

    integer :: x
    integer :: y
    integer :: z
    integer, parameter :: inches_per_foot = 12

    print *, "x = ", x, "y = ", y, "z =", z
    print *, "inches_per_foot = ", inches_per_foot

    x = 3

    print *, "x = ", x, "y = ", z, "z = ", z

    y = 4

    print *, "x = ", x, "y = ", y, "z = ", z

    z = x + y

    print *, "x = ", x, "y = ", y, "z = ", z

    x = 1

    print *, "x = ", x, "y = ", y, "z = ", z


end program variables_example

program main
    implicit none

    integer :: i
    integer :: x(5, 5) = reshape(source=[(i, i=1, 10)], shape = [5, 5], order = [2, 1], pad = [-1, 0, 1])
    character, parameter :: a1(*) = [(char(i), i = 97, 122)]
    character, parameter :: a2(*) = [(char(i), i = ichar("a"), ichar("z"))]

    print "(*(5(i3, 1x), /))", transpose(x)

    print *, size(x)
    print *, size(x, dim=1)
    print *, rank(x)
    print *, any(x < 1)
    print *, all(x  < 1)
    print *, x < 1

    print "(*(a, 1x))", a1
    print "(*(a, 1x))", a2
end program main

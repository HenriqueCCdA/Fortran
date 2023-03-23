program main
    implicit none

    integer :: i
    integer :: v(3, 3) = reshape([1, 1, 1, 2, 2, 2, 3, 3, 3], [3, 3]), w(3, 3) = 1, p(9), u(3, 3)

    character(*), parameter :: fmt = "(*(3(i3, 1x),/))"

    logical :: m(3, 3) = .true.


    print fmt, v
    print fmt, transpose(v)

    print fmt, matmul(v, w)

    print*, lbound(w)
    print*, ubound(w)

    print*, findloc(v, 3)

    p = pack( v, mask= v > 2, vector = [9, 9, 9, 4, 4, 4, 4, 4, 4])
    print*, p

    m(2, 3) = .false.
    u = unpack(p, mask = m, field=0)

    print "(*(3(l, 1x),/))", m
    print fmt, u

    print fmt, w
    print fmt, v

    u = w + v

    print fmt, u

end program main

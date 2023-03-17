program main
    implicit none

    real :: r(3) = [10, -2, 0]
    integer :: vi(10) !, vi2(7), vi3(3), vi4(4)
    integer i
    integer, parameter :: X(100) = [(i ,i = 1, 100)]

    logical :: l(size(X)) = X < 6


    ! vr(1) = 1.0
    ! vr(2) = 2.0
    ! vr(3) = 3.0

    ! vi = 1 + 2 * 7

    ! vi3 = 0
    ! vi4 = 4
    ! !vi2 = [1, 2, 3, 4, 5, 6, 7]
    ! vi2 = [ vi3, vi4 ]

    ! ! print*, vr
    ! ! print*, vi
    ! print*, "vi2:", vi2
    ! print*, "-------------------"

    ! print*, size(vi)

    vi = 10
    vi(1:3) = 0
    vi(7) = - 3

    print*, vi

    print*, sum(vi), product(vi), maxval(vi)

    print*, dot_product(r, r), norm2(r)

    print*, sqrt(sum(r*r)) == norm2(r)

    print "(*(g0.3, 1x))", x

    print *, l
    print *, count(l)

end program main

program main
    implicit none
    integer i
    integer :: v(10) = [(i, i=1, 10)]
    integer :: v2(100) = [(i, i=1, 100)]

    character (*), parameter :: fmt = "(*(g0.3, 1x))", nl = new_line("A")

    print fmt, v, nl
    print fmt, sum(v), product(v), minloc(v), maxloc(v)

    print fmt, sum(v, v > 5 .or. v > 7)
    print fmt, maxval(v, mask = v < 5)

    print fmt, v2, nl
    print fmt, v2(2:80:2), nl
    print fmt, v2(::4), nl

    print fmt, v2(100:1:-1)
end program main

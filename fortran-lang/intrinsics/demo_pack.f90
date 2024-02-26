program demo_pack
implicit none
integer, allocatable :: m(:)
character(len=10) :: c(4)

    m = [1, 0, 0, 0, 5, 0]
    write(*, fmt="(*(i0, ' '))") pack(m, m /=0)

    m = [1, 0, 0, 2]
    write(*, fmt="(*(i0, ' '))") pack(m, m /= 0, [0, 0, 3, 4])
    write(*, fmt="(*(i0, ' '))") pack(m, m /= 0)

    c = [ character(len=10) :: 'ape', 'bat', 'cat', 'dog']
    write(*, fmt="(*(g0, ' '))") pack(c, c(:)(2:2) == 'a')
end program demo_pack

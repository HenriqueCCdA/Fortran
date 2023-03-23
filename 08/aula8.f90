program main
    implicit none
    integer :: i, j, c = 0, v(10), m(10, 10)

    ex: do i=1, 10, 2
        in: do j = 1, 10
            print*,i, j
        end do in
    end do ex

    do
        c = c + 1
        print*, "ola", c
        if (c == 10) exit
    end do

    print *, 'd'

    do i=1, 10
        v(i) = 1
        do j=1, 10
            m(i,j) = i+j
        enddo
    end do

    print "(i0)", v
    print "(10i3, 1x)", m

    do concurrent(i=1:10, j=1:10,  i == j)
        print*, i, j
        m(i, j) = 1
    enddo

    print "(10i3, 1x)", m

end program main

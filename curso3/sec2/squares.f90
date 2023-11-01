program squares
    implicit none

    integer :: i
    integer, dimension(10) :: the_squares(10)

    the_squares = 1

    print *, the_squares

    do i = 1, 10
        the_squares(i) = i**2
    end do

    do i = 10, 1, -1
        print *, the_squares(i)
    enddo

    print *, the_squares(2:4)

end program squares

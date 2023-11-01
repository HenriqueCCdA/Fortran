program do_loops
    implicit none

    integer :: i

    do i = 1, 5
        print *, i
    end do

    do i = 2, 1
        print *, "Thos won't be printed"
    end do

    ! Count backwwards by 2
    do i = 10, 1, - 2
        print *, i
    end do

    do i = 1, 2, -1
        print *, "This gets skipped too "
    end do
end program do_loops

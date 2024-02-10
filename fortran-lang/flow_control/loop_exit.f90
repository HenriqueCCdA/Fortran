program loop_exit
    implicit none

    integer :: i

    do i = 1, 100
        if (i > 10) then
            exit
        end if
        print *, i
    end do

end program loop_exit

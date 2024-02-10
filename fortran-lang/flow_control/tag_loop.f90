program tag
    implicit none

    integer :: i , j

    outer_loop: do i =1, 10
        inner_loop: do j = 1, 10
            if((j + i) > 10) then
                cycle outer_loop
            end if
            print *, 'I=', i, "J=", j, " Sum=", j + i
        end do inner_loop
    end do outer_loop

end program tag

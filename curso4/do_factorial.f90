program do_fact
    implicit none

    integer :: i, n, j, fact

    print *, "Enter a value for n"
    read *, n

    outer_do_loop: do i = 1, n
        ! print *, 'Inside the loop, i = ', i
        fact = 1
        inner_do_loop: do j=1, i
            fact = fact*j
        end do inner_do_loop

        print*, 'The factorial of', i, 'is:', fact
    enddo outer_do_loop

end program do_fact

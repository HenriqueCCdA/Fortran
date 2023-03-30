program main
    implicit none
    integer i, j

    ! do
    !     read *, i
    !     if (i==7) exit
    ! enddo

    ex: do i = 1, 5
        in: do j =1, 15
            print *, i, j
            if(j > 3) exit ex
        enddo in
    enddo ex

end program main

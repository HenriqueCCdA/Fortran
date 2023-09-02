program main
    implicit none
    logical :: cond1 = .true., cond2 = .false.
    integer i

    if ( cond1 ) print*, "Faz 1 pix!"

    A1: if (cond1) then
        print*, "é nada"
        A2: if (.true.) then
            print*, "Joao"
        endif A2
    elseif (cond2) then
        print*, "é top"
    else
        print*, "é show"
    endif A1

    do i=1, 10
        if ( mod(i, 2) /= 0) cycle
        print*, i
    enddo

    do i=1, 10
        if ( mod(i, 2) == 0) print*, i
        if( i > 6) exit
    enddo

    print*, "Fim do programa"

end program main

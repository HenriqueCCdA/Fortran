Program CFD
    implicit none
    integer::i, j, Imax, Jmax
    Real::w, e, L, H, dx, dy
    Real, allocatable::T(:,:), Told(:,:), X(:,:), Y(:,:)

    ! ------------------ Define Variables ---------------------------------
    Imax = 31
    Jmax = 41
    w    = 1.8

    L    = 0.3
    H    = 0.4

    dx   = L / (Imax - 1)
    dy   = H / (Jmax - 1)
    ! -----------------------------------------------------------------------


    allocate( T(Imax, Jmax), Told(Imax, Jmax), X(Imax, Jmax), Y(Imax, Jmax))

    ! ----------------- Grid Generation --------------------------------------
    do i = 1, Imax
        do j = 1, Jmax

            x(i, j) = (i-1)*dx
            y(i, j) = (j-1)*dy
        end do
    end do
    ! ------------------------------------------------------------------------

    ! ------------- I.C & B.Cs -----------------------------------------------
    T          =  0.0
    T(:,1)     = 40.0
    T(:, Jmax) = 10.0
    T(1,:)     = 0.0
    T(Imax, :) = 0.0
    Told       = T
    ! ------------------------------------------------------------------------

    ! -------------------------- calculation process -------------------------
    do
        e = 0.0
        do i = 2, Imax - 1
            do j = 2, Jmax - 1
                T(i, j) = (1.0 - w) * Told(i,j) + 0.25*w*( T(i+1,j) + T(i-1,j) + T(i,j-1) + T(i, j + 1))
                e       = e + ABS(T(i, j) - Told(i, j))
            end do
        end do
        print*, e
        if (e < 0.01) exit

        Told = T
    end do
    ! -------------------------------------------------------------------------

    open(12, file='T.plt')
    write(12, *) 'Variables = X, Y, T'
    write(12,*) 'Zone I=', Jmax, 'J=', Imax

end program

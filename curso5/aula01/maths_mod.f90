module maths1
    contains

    function get_iden(n)
        implicit none
        integer, intent(in) :: n
        integer :: i
        real(8), dimension(n, n) :: get_iden

        get_iden = 0

        do i=1, n
            get_iden(i,i) = 1.0
        end do
    end function get_iden

    function get_ab(a, b, n)
        implicit none
        integer, intent(in) :: n
        integer :: i, j
        real(8), dimension(n, n), intent(in) :: a
        real(8), dimension(n), intent(in) :: b
        real(8), dimension(n, n+1) :: get_ab

        do i=1, n
            do j=1, n+1
                if(j<=n) then
                    get_ab(i, j) = a(i, j)
                else
                    get_ab(i, j) = b(i)
                end if
            end do
        end do
    end function get_ab

    function get_a(n, m)
        implicit none
        integer, intent(in) :: n, m
        integer :: i, j
        real(8), dimension(n, m) :: get_a

        do i = 1, n
            do j = 1, m
                print "('Enter the value of Mat(',i2,',',i2,'):')",i,j
                read *, get_a(i, j)
            end do
        end do
    end function get_a

    function get_b(n)

        implicit none
        integer, intent(in) :: n
        integer :: i
        real(8), dimension(n) :: get_b

        do i = 1,n
            print "('Enter the value of Mat(',i2,'):')",i
            read *, get_b(i)
        end do

    end function get_b

    subroutine print_mat2(a,n,m)

        implicit none
        integer, intent(in) :: n,m
        real(8), dimension(n,m), intent(in) :: a
        integer :: i,j

        do i=1,n
            write(*,'("|")',advance='no')
            do j=1,m
                write(*,'(f8.3,t3)',advance='no') a(i,j)
            end do
            write(*,'("|")')
        end do

    end subroutine print_mat2

    subroutine print_mat1(b,n)

        implicit none
        integer, intent(in) :: n
        real(8), dimension(n), intent(in) :: b
        integer :: i

        do i=1,n
            write(*,'("|",f8.3," |")',advance='yes') b(i)
        end do

    end subroutine print_mat1

    subroutine gauss_fwel_bsolve(aib, x, n)
        implicit none
        integer, intent(in) :: n
        real(8), intent(inout), dimension(n, n+1) :: aib
        real(8), dimension(n, 1), intent(out) :: x
        integer :: i, j, k
        real(8) :: t1, t2
        real(8), dimension(1) :: t3

        x = 0

        do i=1, n -1
            t1 = aib(i, i)
            do j = i+1, n
                t2 = aib(j, i)
                do k = 1, n + 1
                    aib(j, k) = aib(j, k) - aib(i, k) * t2/t1
                end do
            end do
        end do

        print *, "The Matrix Aib after process:"
        call print_mat2(aib, n, n+1)

        do i=n,1,-1
            t3 = matmul(aib(i, 1:n), x)

            x(i, 1) = (aib(i, n+1) - t3(1)) / aib(i, i)
        end do

    end subroutine gauss_fwel_bsolve

    subroutine cram(x, a, b, n)
        implicit none
        integer, intent(in) :: n
        real(8), dimension(n,n,n+1), intent(inout) :: a
        real(8), intent(in), dimension(n) :: b
        real(8) :: det_a
        integer :: i
        real(8), dimension(n, 1), intent(out) :: x

        det_a = detf(a(:,:,1), n)

        do i=1, n
            a(:,:,i+1) = a(:,:,1)
            a(:,i,i+1) = b
            x(i, 1) = detf(a(:,:,i+1), n) / det_a
        end do
    end subroutine cram

    recursive real(8) function detf(mat, n) result(det)

        implicit none
        integer, intent(in) :: n
        real(8), intent(in), dimension(n,n) :: mat
        real(8), dimension(n-1,n-1) :: sl
        integer :: i

        det = 0

        if (n == 1) then
            det = mat(1,1)
        else
            do i = 1,n
                call slicef(sl,mat,n,1,i)
                det = det + ((-1.0)**(1+i))*mat(1,i)*detf(sl,n-1)
            end do
        end if

    end function detf

    subroutine slicef(sl, mat, n, row, column)

        implicit none
        integer, intent(in) :: n,row,column
        real(8), dimension(n,n), intent(in) :: mat
        real(8), dimension(n-1,n-1), intent(out) :: sl
        logical, dimension(n,n) :: mask

        mask = .true.
        mask(row,:) = .false.
        mask(:,column) = .false.

        sl = reshape(pack(mat,mask),(/n-1,n-1/))

    end subroutine slicef

    real(8) function mean1(x, n)
        implicit none
        integer, intent(in) :: n
        real(8), dimension(n), intent(in) :: x

        mean1 = sum(x)/real(n)

    end function mean1

    real(8) function vars1(x,n)

    implicit none
    integer, intent(in) :: n
    real(8), dimension(n), intent(in) :: x
    integer :: i

        vars1 = mean1([(x(i)**2, i=1,n)], n) - (mean1(x, n))**2

    end function vars1

    real(8) function stdev1(x,n)

        implicit none
        integer, intent(in) :: n
        real(8), intent(in), dimension(n) :: x

        stdev1 = (vars1(x,n))**0.5

    end function stdev1

    real(8) function cov_var12(x,y,n)

        implicit none
        integer, intent(in) :: n
        real(8), dimension(n), intent(in) :: x, y
        integer :: i

        cov_var12 = mean1([(x(i)*y(i), i=1,n)], n) - mean1(x, n)*mean1(y, n)

    end function cov_var12

    real(8) function corr_12(x,y,n)

        implicit none
        integer, intent(in) :: n
        real(8), intent(in), dimension(n) :: x, y

        corr_12 = cov_var12(x,y,n)/(stdev1(x, n)*stdev1(y, n))

    end function corr_12
end module maths1

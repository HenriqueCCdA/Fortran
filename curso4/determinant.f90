! Program to find the Determinant of a 2D matrix

program deter
    implicit none
    integer, parameter :: n = 3
    real(8), dimension(n,n) :: mat
    real(8), external :: detf
    real(8) :: det
    integer :: i, j

    mat = reshape((/1,0,0,2,-4,3,3,1,-1/), (/3,3/))

    det = detf(mat, n)

    print *, "The Matix is:"
    do i = 1, n
        do j = 1, n
            write(*, '(f8.3, t3)', advance='no') mat(i,j)
        end do
        write(*, *)
    end do

    print *, "The determinant is = ", det
end program deter

recursive function detf(mat, n) result(det)
    implicit none
    integer, intent(in) :: n
    real(8), intent(in), dimension(n, n) :: mat
    real(8), dimension(n-1, n-1) :: sl
    real(8) :: det
    integer :: i

    det = 0

    if(n==1) then
        det = mat(1, 1)
        return
    else if (n == 1) then
        det = mat(1, 1)
        return
    else
        do i = 1, n
            call slicef(sl, mat, n, 1, i)
            det = det + ((-1.0)**(1+i)*mat(1,i)*detf(sl,n-1))
        end do
        return
    end if

end function detf

subroutine slicef(sl, mat, n, row, column)
    implicit none
    integer, intent(in) :: n, row, column
    real(8), dimension(n, n), intent(in) :: mat
    real(8), dimension(n-1,n-1), intent(out) :: sl
    logical, dimension(n, n) :: mask

    mask = .true.
    mask(row, :) = .false.
    mask(:, column) = .false.

    sl = reshape(pack(mat, mask), (/n-1, n-1/))
end subroutine slicef

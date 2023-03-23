program main
    implicit none

!    real :: v1(10), v2(10), v3(10)
!   real, dimension(10) :: v1, v2, v3
    real, dimension(*), parameter :: v5 = [1, 2, 3]

    ! real :: mat1(2, 2)
    ! real, dimension(2, 2) :: mat2

    real :: m(2, 2)
    real :: x(2, 2) = transpose(reshape([1, 2, 3, 4], [2, 2]))
    real :: y(2, 2) = reshape([1, 2, 3, 4], [2, 2], order=[2,1])
    integer :: i
    integer :: xi(3, 3) = reshape([(i, i=1, 9)], [3, 3], order=[2,1])

    m(1, 1) = 1;  m(1, 2) = 2
    m(2, 1) = 3;  m(2, 2) = 4

    print*, m
    print*, x
    print*, y
    print*, xi(1,:)
    print*, xi(2,:)
    print*, xi(3,:)

    print "(*(3(i3, 1x),/))", transpose(xi)

end program main

program matmul1

    implicit none
    integer, parameter :: n = 1000
    integer :: i, j, k
    integer, dimension(n,n) :: a, b, c
    real :: t1, t2, ep

    a = 1
    b = 0
    do i = 1, n
        b(i,i) = 1
    end do
    c = 0
    call cpu_time(t1)

    do k = 1, n
        do j = 1, n
            do i = 1, n
                c(i, j) = c(i, j) + a(i, k) * b(k, j)
            end do
        end do
    end do

    call cpu_time(t2)
    ep = t2 - t1

    print *, "Time for multiplication for foop in seconds:", ep

    a = 1
    b = 0
    do i = 1, n
        b(i,i) = 1
    end do
    c = 0
    call cpu_time(t1)

    c = matmul(a, b)

    call cpu_time(t2)

    ep = t2 - t1

    print *, "Time for multiplication for comand in seconds:", ep

end program matmul1

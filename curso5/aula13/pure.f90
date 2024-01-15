program pure_ex
    implicit none
    integer, parameter :: n = 10
    integer(8) :: i
    integer(8), dimension(n) :: num, numfacts
    integer(8), external :: fac_num

    num(1:n) = [(i, i=1,n)]
    numfacts(1:n) = [(fac_num(num(i)), i=1,n)]

    do i=1, n
        print *, "The ", i, "! is:", numfacts(i)
    end do
end program pure_ex

pure integer(8) function fac_num(num) result(fact)

    implicit none
    integer(8), intent(in) :: num
    integer(8) :: i

    fact = 1

    do i=1, num
        fact = fact * i
    end do

    return

end

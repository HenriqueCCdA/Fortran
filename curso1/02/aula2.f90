program main
    implicit none
    integer i, j
    real x
    real :: h = 6.0, h2 = 2.0
    character(*), parameter :: CONSTANTE = 'Banana'
    character(len=6) :: nome = 'Banana'

    real     :: x1 = 1.0
    real(4)  :: x2 = 1.0
    real(8)  :: x3 = 1.0
    real(16) :: x4 = 1.0

    i = 10
    j = 100
    x  = 2.0
    nome = 'd'

    print*, i, j, x ** 2, h, h2
    print*, nome, CONSTANTE

    print*, x1, x2, x3, x4
end program main

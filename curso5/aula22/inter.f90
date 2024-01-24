real function geo_term_real(a0, r, n) result(an)

    implicit none
    integer, intent(in) :: n
    real, intent(in) :: a0, r
    print *, "real"
    an = a0*r**n
    return
end function geo_term_real

integer function geo_term_int(a0, r, n) result(an)

    implicit none
    integer, intent(in) :: n
    integer, intent(in) :: a0, r
    print *, "integer"

    an = a0*r**n
    return
end function geo_term_int

program inter

    implicit none

    integer :: aa0 = 1, ar = 4, n = 6, aan
    real :: ga0 = 1.0, gr = 4.0, gan

    interface geo_term

        integer function geo_term_int(a0, r, n) result(an)

            implicit none
            integer, intent(in) :: n
            integer, intent(in) :: a0, r

        end function geo_term_int

        real function geo_term_real(a0, r, n) result(an)

            implicit none
            integer, intent(in) :: n
            real, intent(in) :: a0, r

        end function geo_term_real

    end interface geo_term

    aan = geo_term(aa0, ar, n)
    gan = geo_term(ga0, gr, n)

    print *, "n = ", n

    print *, "aa0 = ", aa0
    print *, "ar = ", ar
    print *, "aan = ", aan

    print *, "ga0 = ", ga0
    print *, "gr = ", gr
    print *, "gan = ", gan
end program inter

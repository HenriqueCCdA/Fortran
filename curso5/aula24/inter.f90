subroutine swap_int(a, b)

    implicit none
    integer, intent(inout) :: a, b
    integer :: c

    c = a
    a = b
    b = c

end subroutine swap_int

subroutine swap_real(a, b)

    implicit none
    real, intent(inout) :: a, b
    real :: c

    c = a
    a = b
    b = c

end subroutine swap_real

program inter

    implicit none

    integer :: sia = 4, sib = 5
    real :: sra = 4.0, srb = 5.0

    interface swap

    subroutine swap_real(a, b)

        implicit none
        real, intent(inout) :: a, b
        !real :: c

    end subroutine swap_real

    subroutine swap_int(a, b)

        implicit none
        integer, intent(inout) :: a, b
        !integer :: c

    end subroutine swap_int

    end interface swap


    print *, "Integer Swapping:"

    print *, "Before Swapping:"
    print *, "sia = ",sia
    print *, "sib = ",sib

    call swap(sia, sib)

    print *, "After Swapping:"
    print *, "sia = ",sia
    print *, "sib = ",sib

    print *, "Float Swapping:"

    print *, "Before Swapping:"
    print *, "sra = ",sra
    print *, "srb = ",srb

    call swap(sra, srb)

    print *, "After Swapping:"
    print *, "sra = ",sra
    print *, "srb = ",srb

end program inter

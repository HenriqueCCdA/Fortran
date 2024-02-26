module kind_parameter
    implicit none
    public

    integer, parameter :: sp = selected_real_kind(6, 37)
    integer, parameter :: dp = selected_real_kind(15, 307)
    integer, parameter :: qp = selected_real_kind(33, 4931)

    integer, parameter :: i1 = selected_int_kind(2)
    integer, parameter :: i2 = selected_int_kind(4)
    integer, parameter :: i4 = selected_int_kind(9)
    integer, parameter :: i8 = selected_int_kind(18)


end module kind_parameter

program test
    ! use, intrinsic :: iso_fortran_env, only : dp => real128
    use kind_parameter
    implicit none
    ! integer, parameter :: dp = selected_real_kind(35)

    print *, sp, dp, qp
    print *, i1, i2, i4, i8
end program test

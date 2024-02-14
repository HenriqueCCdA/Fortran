! program foo
!    implicit none
!    integer, parameter :: dp = kind(0.d0)
!    real(kind=dp), parameter :: x = 9.3_dp

!    print *, precision(x), x, dp

! end program foo

program foo
   implicit none
   integer, parameter :: dp = kind(0.d0)
   real(kind=dp), parameter :: onethird = 1.0_dp / 3_dp

   print *, onethird

end program foo

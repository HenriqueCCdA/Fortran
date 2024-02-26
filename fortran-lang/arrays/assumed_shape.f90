module ttt
   implicit none
   private

   public :: h, f
contains
subroutine h(r)
   integer, parameter :: dp = kind(1.d0)
   real(dp), intent(in) :: r(..)
   select rank(r)
   rank(1)
      print*, '1'
   rank(2)
      print*, '2'
   end select
end subroutine h
subroutine f(r)
   integer, parameter :: dp = kind(1.d0)
   real(8), intent(out) :: r(:)
   integer :: n, i
   n = size(r)
   do i = 1, n
      r(i) = 1.0_dp / i ** 2
   end do
end subroutine f

end module ttt

program test
   use ttt
   implicit none
   real(8) :: r(4), g(4, 5)

   call f(r)
   call h(g)

   print *, r
contains


end program test

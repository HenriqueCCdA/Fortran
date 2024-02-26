module demo_functions
   use types, only: dp
   implicit none
   private
   public :: test_integral
contains

   subroutine test_integral(a, k)
      real(dp), intent(in) :: a, k
      print *, simpson(f, 0._dp, pi)
      print *, simpson(f, 0._dp, 2*pi)
   contains

      function f(x) result(y)
         real(dp), intent(in) :: x
         real(dp) :: y
         y = a * sin(k*x)
      end function f
   end subroutine test_integral
end module demo_functions

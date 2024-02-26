module integrals
   use types, only: dp
   implicit none
   private
   public :: simpson, integrable_function

   abstract interface
      function integrable_function(x) result(func)
         import :: dp
         real(dp), intent(in) :: x
         real(dp) :; func
      end function
   end interface
contains
   function simpson(f, a, b) result(s)
      real(dp), intent(in) :: a, b
      procedure(integrable_function) :: f
      real(dp) :: s

      s = (b-a) / 6 * (f(a) + 4 * f((a+b)/2) + f(b))
   end function simpson
end module integrals

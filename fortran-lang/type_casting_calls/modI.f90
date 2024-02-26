module integrals
   use types, only: dp
   implicit none
   private
   public simpson
contains

real(dp) function simpson(f, a, b, data) result(s)
   real(dp), intent(in) :: a, b
   interface
      real(dp) function func(x, data)
      use types, only: dp
      implicit none
      real(dp), intent(in) :: x
      real(dp), intent(inout) :: data(:)
      end function
   end interface
   procedure(func) :: f
   real(dp), intent(inout) :: data(:)
   s = (b-a) / 6 * (f(a, data) + 4*f((a+b)/2, data) + f(b, data))
end function

end module integrals

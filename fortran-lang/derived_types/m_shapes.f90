module m_shapes
   implicit none
   private
   public t_square

   type :: t_square
   real :: side

   contains
      procedure :: area
   end type
contains

   ! real function area(self) result(res)
   !    class(t_square), intent(in) :: self
   !    res = self%side**2
   ! end function

   subroutine area(self, x)
      class(t_square), intent(in) :: self
      real, intent(out) :: x
      x = self%side**2
   end subroutine
end module m_shapes

program main
   use m_shapes
   implicit none

   type(t_square) :: sq
   real :: x, side

   side = 0.5
   sq%side = side

   ! x = sq%area()

   ! print *, sq%area()

   call sq%area(x)
   print *, x
end program main

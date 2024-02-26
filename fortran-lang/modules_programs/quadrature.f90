!> Numerical integration
!>
!>
module stdlib_quadrature
   ! use stdlib_kinds, only: sp, dp, qp
   implicit none
   private

   public :: trapz

   interface trapz
      pure module function trapz_dx_8(y, dx) result(integral)
         real(8), intent(in) :: y(:)
         real(8), intent(in) :: dx
         real(8) :: integral
      end function trapz_dx_8
      module function trapz_dx_8
         real(8), intent(in) :: y(:)
         real(8), intent(in) :: x(:)
         real(8) :: integral
      end function trapz_dx_8
   end interface trapz

end module stdlib_quadrature

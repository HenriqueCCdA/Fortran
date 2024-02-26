module test
   use types, only: dp
   use integrals, only: simpson
   implicit none
   private
   public foo
contains

real(dp) function f(x, data) result(y)
   real(dp), intent(in) :: x
   real(dp), intent(inout) :: data(:)
   real(dp) :: a, k
   a = data(1)
   k = data(2)
   y = a*sin(k*x)
end function

subroutine foo(a, k)
   real(dp) :: a, k
   real(dp) :: data(2)
   data(1) = a
   data(2) = k
   print *, simpson(f, 0._dp, pi, data)
   print *, simpson(f, 0._dp, 2 * pi, data)
end subroutine

end module

program use
   use test
   implicit none
   call foo
end program use

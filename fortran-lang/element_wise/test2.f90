module wise
   implicit none
   integer, parameter :: dp = kind(1.d0)
contains
   function nroot(n, x) result(y)
      implicit none
      integer, intent(in) :: n
      real(dp), intent(in) :: x(:)
      real(dp) :: y(size(x))
      y = x**(1._dp / n)
   end function nroot

   function nroot_0d(n, x) result(y)
      integer, intent(in) :: n
      real(dp), intent(in) :: x
      real(dp) :: y
      real(dp) :: tmp(1)
      tmp = nroot(n, [x])
      y = tmp(1)
   end function nroot_0d

   function nroot_2d(n, x) result(y)
      integer, intent(in) :: n
      real(dp), intent(in) :: x(:, :)
      real(dp) :: y(size(x, 1), size(x, 2))
      y = reshape(nroot(n, reshape(x, [size(x)])), [size(x, 1), size(x, 2)])
   end function nroot_2d
end module wise

program test
   use wise
   implicit none

   print *, nroot_0d(2, 9._dp)
   print *, nroot(2, [1._dp, 4._dp, 9._dp, 10._dp])
   print *, nroot_2d(2, reshape([1._dp, 4._dp, 9._dp, 10._dp], [2, 2]))

end program test

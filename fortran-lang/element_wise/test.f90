module wise
   implicit none
   integer, parameter :: dp = kind(1.d0)
contains
   real(dp) elemental function nroot(n, x) result(y)
   implicit none
   integer, intent(in) :: n
   real(dp), intent(in) :: x
   y = x**(1._dp / n)
end function
end module wise

program test
   use wise
   implicit none

   print *, nroot(2, 9._dp)
   print *, nroot(2, [1._dp, 4._dp, 9._dp, 10._dp])
   print *, nroot(2, reshape([1._dp, 4._dp, 9._dp, 10._dp], [2, 2]))
   print *, nroot([2, 3, 4, 5], [1._dp, 4._dp, 9._dp, 10._dp])
   print *, nroot([2, 3, 4, 5], 4._dp)

end program test

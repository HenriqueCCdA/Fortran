program pro1
   implicit none

   type :: t_pair
      integer :: i = 1
      real :: x = 0.5
   end type

   type(t_pair) :: pair

   pair%i = 1
   pair%x = 0.5

   print *, pair

   pair = t_pair(2.0, 0.5)
   print *, pair

   pair = t_pair(x=3.0)
   print *, pair

end program pro1

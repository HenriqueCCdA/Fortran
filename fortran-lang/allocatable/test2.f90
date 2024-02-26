module www
   implicit none
contains
   subroutine show_arr(arr)
      integer, allocatable, intent(in) :: arr(:)
      print *, arr
   end subroutine show_arr

   subroutine proc
      integer :: i
      integer, allocatable :: arr(:)

      allocate(arr(5))

      do i = 1, size(arr)
         arr(i) = 2*i + 1
      end do
      call show_arr(arr)
   end subroutine proc
end module

program test
   use www
   implicit none

   call proc

end program test

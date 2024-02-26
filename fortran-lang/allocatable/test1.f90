subroutine show_arr(arr)
   integer, allocatable, intent(in) :: arr(:)

   if (allocated(arr)) then
      print *, arr
   end if
end subroutine show_arr


program test
   use iso_fortran_env, only: dp=>REAL64
   implicit none
   real(dp), allocatable :: temp(:)
   allocate(temp(10))

end program test

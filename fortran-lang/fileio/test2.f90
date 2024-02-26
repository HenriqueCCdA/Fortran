program test1
   implicit none
   integer :: io, stat
   character(len=512) :: msg
   open(newunit=io, file="log.txt", status="old", action="read", iostat=stat, iomsg=msg)

   if(stat /= 0) then
      print *, trim(msg)
   end if

   close(io)

end program test1

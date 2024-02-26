program test1
   implicit none
   logical :: exists
   integer :: io, stat
   inquire(file="log.txt", exist=exists)
   if(exists) then
      open(file="log.txt", newunit=io, iostat=stat)
      if(stat==0) close(io, status="delete", iostat=stat)
   end if

end program test1

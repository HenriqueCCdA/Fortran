program test1
   implicit none
   integer :: io, v(5), i

   v = [(i, i=1,5)]

   open(newunit=io, file="log.txt", position="append", status="old", action="write")

   write(io, *) size(v)
   write(io, *) v(:)

   close(io)

end program test1

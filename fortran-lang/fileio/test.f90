program test1
    implicit none
    integer :: io
    integer :: a, b

    open(newunit=io, file="log.txt", status="old", action="read")
    read(io, *) a, b
    print *, a, b
    close(io)

end program test1

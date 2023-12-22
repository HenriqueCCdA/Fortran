subroutine B
    implicit none

    print *, "We are inside Subroutine B!"
    print *, "Calling Subroutine C!"
    call C
    print *, "We are back to the Subroutine B"

end subroutine B

subroutine C
    implicit none

    print *, "We are inside Subroutine C!"
    print *, "Calling Subroutine D!"
    call D
    print *, "We are back to the Subroutine C"

end subroutine C

subroutine D
    implicit none

    print *, "We are inside Subroutine D!"
    print *, "We are going back to the called Subroutine"

end subroutine D

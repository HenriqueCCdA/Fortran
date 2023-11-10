program user_input
    implicit none

    integer :: age
    character(len=20) :: hometown
    character(len=20) :: name
    integer :: status
    integer :: unit

    name = "UNKNOWN"
    age = 0
    hometown = "UNKNOWN"

    open(newunit=unit, file="hello_input.txt", status="OLD")

    read(unit, *, iostat=status) name, age, hometown

    close(unit)

    call say_hello(name)
    print *, "You look great for", age
    print *, "What1s the weather link in " // trim(hometown) // "?"
contains
    subroutine say_hello(name_)
        character(len=*), intent(in) :: name_
        print *, make_greeting(name_)
    end subroutine

    character(len=20) function make_greeting(name_)
        character(len=*), intent(in) :: name_
        make_greeting = "Hi " // trim(name_) // "!"
    end function
end program user_input

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

    print *, "Hi " // trim(name) // "!"
    print *, "You look great for", age
    print *, "What1s the weather link in " // trim(hometown) // "?"
end program user_input

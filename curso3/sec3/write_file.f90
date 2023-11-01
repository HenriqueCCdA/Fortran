program write_file
    implicit none

    integer :: age
    character(len=20) :: hometown
    character(len=20) :: name
    integer :: status
    integer :: unit

    name = "UNKNOWN"
    age = 0
    hometown = "UNKNOWN"

    do
        print *, "Can you tell me your name, age and where you live?"
        read(*, *, iostat=status) name, age, hometown
        if (status == 0) exit
        print *, "Sorr, I didn't understand that"
    end do

    open(newunit=unit, file="hello.txt", status="REPLACE")

    write(unit, *) "Hi " // trim(name) // "!"
    write(unit, *) "You look great for", age
    write(unit, *) "What's the weather link in " // trim(hometown) // "?"

    close(unit)
end program write_file

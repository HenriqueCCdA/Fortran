program user_input
    implicit none

    integer :: age
    character(len=20) :: hometown
    character(len=20) :: name
    integer :: status

    name = "UNKNOWN"
    age = 0
    hometown = "UNKNOWN"

    do
        print *, "Can you tell me your name, age and where you live?"
        read(*, *, iostat=status) name, age, hometown
        if (status == 0) exit
        print *, "Sorr, I didn't understand that"
    end do
    print *, "Hi " // trim(name) // "!"
    print *, "You look great for", age
    print *, "What1s the weather link in " // trim(hometown) // "?"
end program user_input

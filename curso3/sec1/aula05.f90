program hello
    implicit none

    character(len=*),  parameter :: PERSON = "world"
    character(len=:),  allocatable:: greeting

    greeting = greet(PERSON)
    print '(A)', greeting
contains
    pure function greet(person_) result(greeting_)
        character(len=*), intent(in) :: person_
        character(len=:), allocatable :: greeting_

        greeting_ = "Hello, " // person_ // "!"
    end function greet
end program Hello

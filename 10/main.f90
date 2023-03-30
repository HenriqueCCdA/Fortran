program main
    implicit none
    integer :: cond = 1
    character :: c = "c"

    select case(c)
        case("a":"d")
            print*, c == "c"
    end select


    L1: select case (cond)
        case(1)
            print*, "é um"
            if (.true.) print*, "SSSSIII"
        case(2)
            print*, "é dois"
        case(3:7)
            print*, "é 3:7"
    end select L1

end program main

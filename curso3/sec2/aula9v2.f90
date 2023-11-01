program select_case_examples
    implicit none

    select case (1+1)
    case (1+1, 2+1)
        print *, "1+1, 2+1"
    end select

    select case ("Hi")
    case ("Hello")
        print *, "Hello"
    case default
        print *, "default"
    end select

    select case (3)
    case (:4)
        print *, "Hi"
    end select
end program select_case_examples

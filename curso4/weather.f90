program weather
    implicit none

    integer, allocatable, dimension(:) :: temp, rh
    character(len=10) :: t, r
    integer :: i, n

    print *, "Enter the number of day(s):"
    read *, n

    allocate(temp(n), rh(n))

    do i = 1, n
        print *, "Enter the temperature and RH of the day:", i
        read *, temp(i), rh(i)
    end do

    do i =1, n
        if(temp(i)<-90) then
            exit
        else
            select case(temp(i))
            case(:10)
                t = "Freezing"
            case(11:20)
                t = "cold"
            case(21:30)
                t = "Warm"
            case(31:35)
                t = "Hot"
            case(36:)
                t = "Very Hot!"
            case default
                t = "Unknown"
            end select

            if (rh(i) > 100 .or. rh(i) < 0) then
                exit
            else
                select case(rh(i))
                case(:20)
                    r = "Dry"
                case(21:40)
                    r = "Little Dry"
                case(41:60)
                    r = "Pleasant"
                case(61:80)
                    r = "Sweaty"
                case(81:)
                    r = "Harsh!"
                case default
                    t = "Unknown"
                end select
            end if
        end if
    enddo

    deallocate(temp, rh)
end program weather

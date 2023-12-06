program cal_trick
    implicit none

    integer :: year, month, date1, y1, y14, m1, sum1, d
    character*12, dimension(12) :: months
    character*10, dimension(7) :: days
    character*12 :: mon, day

    months(1) = "January"
    months(2) = "February"
    months(3) = "March"
    months(4) = "April"
    months(5) = "May"
    months(6) = "June"
    months(7) = "July"
    months(8) = "August"
    months(9) = "September"
    months(10) = "October"
    months(11) = "November"
    months(12) = "December"

    days(1) = "Sunday"
    days(2) = "Monday"
    days(3) = "Tuesday"
    days(4) = "Wednesday"
    days(5) = "Thursday"
    days(6) = "Friday"
    days(7) = "Saturday"

    print *, "Enter the Year, month and date"
    read *, year, month, date1

    y1 = mod(year, 1900)
    y14 = y1/4

    select case(month)
    case(10)
        m1 = 1
    case(5)
        m1 = 2
    case(8)
        m1 = 3
    case(3, 11)
        m1 = 4
    case(6)
        m1 = 5
    case(9, 12)
        m1 = 6
    case(4, 7)
        m1 = 0
    case(1)
        jan: select case(mod(year, 4) == 0)
        case (.true.)
            m1 = 0
        case(.false.)
            m1 = 1
        case default
            m1 = -1
            print *, "Error in year"
        end select jan
    case(2)
        feb: select case(mod(year, 4) == 0)
        case (.true.)
            m1 = 3
        case(.false.)
            m1 = 4
        case default
            m1 = -1
            print *, "Error in year"
        end select feb
    case default
        m1 = -1
        print *, "Error in year"
    end select
    select case(m1 /= -1)
    case (.true.)
        sum1 = y1+y14+m1+date1
        d = mod(sum1,7)

    select case(d)
        case(0)
            day = days(7)
        case(1)
            day = days(1)
        case(2)
            day = days(2)
        case(3)
            day = days(3)
        case(4)
            day = days(4)
        case(5)
            day = days(5)
        case(6)
            day = days(6)
        case default
            day = "Error"
            print *, "Error in sum"
    end select

    mon = months(month)

    print *, "The Year is:", year
    print *, "The Month is:", mon
    print *, "The Date is:", date1
    print *, "The day is:", day

    case default
        print *, "Some error(s) in the Input"
    end select
end program cal_trick

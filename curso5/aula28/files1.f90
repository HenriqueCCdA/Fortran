program files1

    implicit none
    integer, parameter :: u = 10, g=2
    integer :: roll, ios, grades(g), no, i, j, rno, f=0
    character(len=25) :: stud_name

    open(unit=u, file="stud_rec.txt", status="replace", iostat=ios)

    if(ios/=0) then
        print *, "File cannot be opened"
        stop
    end if

    rewind u

    print *, "Enter the number of entries:"
    read *, no

    10 format(i4, 3x, a25, 3x, 2i4)

    do i=1, no
        print *, "Enter the roll number for student ", i, ":"
        read *, roll
        print *, "Enter the name for student ", i, ":"
        read *, stud_name
        print *, "Enter the grades for student", i, ":"
        do j=1, g
            read *, grades(j)
        end do
        write(unit=u, fmt=10) roll, stud_name, grades
    end do

    close(unit=u)

    print *, "Writting done! ... Let's read data shall we?"

    rno = 10

    open(unit = u, file = "stud_rec.txt", status="old", iostat=ios)

    if(ios/=0) then
        print *, "File cannot be opened"
        stop
    end if

    do
        read(unit=u, fmt=10, iostat = ios) roll, stud_name, grades
        if(ios < 0) exit

        print *, "File read roll no:", roll

        if(roll == rno) then
            f = 1
            print *, "Roll no, found!"
            print *, "Roll no:", roll
            print *, "Name: ", stud_name
            print *, "Grades:", grades
            print *, "Just like thos, all the data can be extracted and printed!"
            exit
        endif

    end do

    if (f == 1) then
        f = 0
        print *, "Congratulaions! Your data was retrived!"
    else
        print *, "Sorry!, Data not available!"
    end if

    close(unit=u)

    print *, "Searching done!... Let's relace a data shell we?"

    rno = 5

    open(unit=u, file ="stud_rec.txt",  status="old", iostat=ios)

    if(ios/=0) then
        print *, "File cannot be opened"
        stop
    end if

    do
        read(unit=u, fmt=10, iostat=ios) roll, stud_name, grades
        if(ios < 0) exit

        print *, "FFile read roll no:", roll

        if(roll == rno) then
            f = 1
            print *, "Roll no. found!"
            backspace u
            print *, "Enter the new roll number for student ", i, ":"
            read *, roll
            print *, "Enter the new namme for student ", i, ":"
            read *, stud_name
            print *, "Enter the new grades for student ", i, ":"
            do j=1, g
                read *, grades(j)
            end do

            write(unit=u, fmt=10) roll, stud_name, grades
            exit
        end if
    end do

    if (f == 1) then
        print *, "Congratulations! Your data was edited"
    else
        print *, "Sorry!, Data not edited"
    end if

    close(unit=u)

end program files1

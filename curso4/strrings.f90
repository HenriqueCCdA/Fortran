program strings
    implicit none

    character :: a

    character (len=5) :: b

    character :: c*6, d*19, e*3

    character, dimension(2) :: str1*6

    a = 'X'
    b = 'white'
    c = '456231'
    d = "asd567jk^%"
    e = "- -"

    print *, a
    print *, b
    print *, c
    print *, d
    print *, e

end program strings

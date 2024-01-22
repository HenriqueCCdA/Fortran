integer function f1(x)

    implicit none
    integer, intent(inout) :: x
    x = 1
    print *, "X = ", x
    f1 = x

    contains

    real function fl(z)
        implicit none
        real, intent(in) :: z
        fl = z + 2
    end function fl

    subroutine print_val(x)
        implicit none
        integer, intent(in) :: x

        print *, "X = ", x
    end subroutine print_val
end function f1

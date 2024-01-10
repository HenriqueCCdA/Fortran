program oct_hex_bin
    implicit none
    integer :: i = -1
    real :: j = 45.68

    print *, "The real j in real is:"
    write(*, "(f14.8)") j
    print *, "The real j in binary is:"
    write(*, "(b45)") j
    print *, "The real j in octal is:"
    write(*, "(o20)") j
    print *, "The real j in hex is:"
    write(*, "(z20)") j

    print *, "The real i in integer is:"
    write(*, "(i20)") i
    print *, "The real i in binary is:"
    write(*, "(b32)") i
    print *, "The real i in octal is:"
    write(*, "(o20)") i
    print *, "The real i in hex is:"
    write(*, "(z20)") i

end program oct_hex_bin

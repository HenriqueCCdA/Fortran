program Vertical
    implicit none
    real, parameter :: G = 9.8 ! accelerration dur to gravity
    real s ! displacement (metres)
    real t ! time
    real u ! initial speed (metres/sec)
    print*, ' Time Displacement'
    print*
    u = 60
    t = 6
    s = u * t - g / 2 * T ** 2
    print*, t, s
end program Vertical

program solver
    implicit none
    integer, parameter :: ts = 4001, sp = 1001
    real(8), dimension(1:ts+1, 1:sp) :: u
    real(8), dimension(1:sp) :: ud, k1, k2, k3, k4, x
    real(8), parameter :: c = 2, l = 1000.0, pi = 4*atan(1.0), t = 1000
    real(8) :: dx, dt
    integer :: i, j

    dx = l / real(sp-1)
    dt = t / real(ts-1)

    print *, "The CFL is: ", c * dx / dx

    x(1:sp) = [((dx*(i-1)), i=1,sp)]
    u(1,1:sp) = [(sin(2*pi*x(i)/l), i=1,sp)]

    k1 = 0
    k2 = 0
    k3 = 0
    k4 = 0

    10 format(f25.15, 5x, f25.15)

    do i = 2, ts

        ud = u(i-1,:)
        u(i,1) = u(i-1,sp-1)

        call sub_lae_rk4(c, k1, ud, dx, dt, sp)
        call sub_lae_rk4(c, k2, ud+k1/2.0, dx, dt, sp)
        call sub_lae_rk4(c, k3, ud+k2/2.0, dx, dt, sp)
        call sub_lae_rk4(c, k4, ud+k3/2.0, dx, dt, sp)

        u(i,:) = ud + (k1+2.0*k2+2.0*k3+k4) / 6.0
        u(i,1) = u(i-1, sp)

    end do
end program solver

subroutine sub_lae_rk4(c, k, u, dx, dt, sh)
    implicit none
    integer, intent(in) :: sh
    real(8), intent(in), dimension(sh) :: u
    real(8), intent(inout), dimension(sh) :: k
    real(8), intent(in) :: c, dx, dt
    integer :: i

    k(2:sh) = [(-c*dt*(u(i)-u(i-1))/dx, i = 2, sh)]
end subroutine sub_lae_rk4

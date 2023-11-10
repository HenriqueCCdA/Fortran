program Test
    integer, dimension(3, 3) :: c, x
    data ((c(i, j), j =1, 3), i = 1, 3) / 3, 12, 10, 17, 18, 35, 7, 10, 24 /

    data ((x(i, j), j =1, 3), i = 1, 3) / 4, 0, 0, 6, 6, 0, 0, 3, 5 /
    tot_cost = 0

    do i = 1, 3
        do j = 1, 3
            tot_cost = tot_cost + c(i, j) * x(i, j)
        enddo
    enddo

    print*, "Total cost:", tot_cost
end

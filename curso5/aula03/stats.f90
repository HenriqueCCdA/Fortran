program stats

    use stat_funcs
    implicit none
    integer, parameter :: n = 5

    real(8) :: meanv1, stdevv1, varv1, cov_v12
    real(8) :: meanv2, stdevv2, varv2, cor_v12
    real(8), dimension(n) :: vals1, vals2

    vals1 = (/48,49,50,51,52/)
    vals2 = (/34,56,78,34,31/)

    meanv1 = mean1(vals1, n)
    meanv2 = mean1(vals2, n)

    stdevv1 = stdev1(vals1, n)
    stdevv2 = stdev1(vals2, n)

    varv1 = vars1(vals1, n)
    varv2 = vars1(vals2, n)

    cov_v12 = cov_var12(vals1, vals2, n)
    cor_v12 = corr_12(vals1, vals2, n)

    print *, "Values Set 1 is:"
    call print_mat1(vals1, n)

    print *, "Values Set 2  is:"
    call print_mat1(vals2, n)

    print *, "Mean1: ", meanv1
    print *, "Var1: ", varv1
    print *, "Stdevv1: ", stdevv1

    print *, "Mean2: ", meanv2
    print *, "Var2: ", varv2
    print *, "Stdevv2: ", stdevv2

    print *, "Covariance", cov_v12
    print *, "Covariance", cor_v12
end program stats

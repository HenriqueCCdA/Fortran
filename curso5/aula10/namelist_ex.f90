program namelist_ex
    implicit none
    character(len=10) :: name1 = "G. Arun"
    integer, dimension(5) :: percents = (/80, 96, 85, 90, 92/)
    real(8) :: avg
    integer :: class1 = 1, rank1 = 4
    namelist /dat/ name1, percents, avg, class1, rank1

    avg = sum(percents)/5

    print *, "The detail are:"
    write(*, nml=dat)
end program namelist_ex

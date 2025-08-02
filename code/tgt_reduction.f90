program reduction
    use iso_fortran_env, only: rt=>real64
    implicit none
    real(kind=rt) :: s, a(10000)
    integer :: i
    s = 0.0_rt
!$omp target teams distribute parallel do reduction(+:s)
    do i = 1, 10000
        s = s + a(i)
    enddo
!$omp end target teams distribute parallel do
    print *, s
end program

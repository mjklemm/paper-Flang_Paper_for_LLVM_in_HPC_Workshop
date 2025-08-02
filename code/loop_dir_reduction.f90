!$omp loop reduction(+:s)
do i=1,n
    s = s + 1
end do
!$omp end loop

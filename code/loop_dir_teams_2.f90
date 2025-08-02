!$omp teams loop collapse(2)
do i = 1, n
    do j = 1, m
        val(i, j) = i + j
        call foo()
    end do
end do

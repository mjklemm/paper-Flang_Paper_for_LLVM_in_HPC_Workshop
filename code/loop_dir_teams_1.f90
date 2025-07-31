!$omp teams loop collapse(2)
do i = 1, n
  do j = 1, m
    val(i,j) = i + j
  end do
end do
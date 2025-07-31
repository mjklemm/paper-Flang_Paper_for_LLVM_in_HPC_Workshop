program main
   real, allocatable :: x(:), a(:), b(:)
   real :: y(256), c(256), d(256)
   ! allocate dynamic array x
   allocate(x(256))
   ! allocate a,b as well
   ! OpenMP kernel with static arrays
   !$omp target teams distribute parallel do
   do i = 1, 255
      x(i) = a(i) + b(i)
   end do
   ! OpenMP kernel with dynamic arrays
   !$omp target teams distribute parallel do
   do i = 1, 255
      y(i) = c(i) + d(i)
   end do
end program
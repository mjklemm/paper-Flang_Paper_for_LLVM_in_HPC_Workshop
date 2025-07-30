program reduction
      integer:: i,n
      real(8):: s
      n = 10000
      s=0.0d0
!$omp target teams distribute parallel do reduction(+:s)
      do i=1, n
         s=s+i
      enddo
!$omp end target teams distribute parallel do
end program

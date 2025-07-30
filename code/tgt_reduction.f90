program reduction
      real(8):: s, a(10000)
      s=0.0d0
!$omp target teams distribute parallel do reduction(+:s)
      do i=1, 10000
         s=s+a(i)
      enddo
!$omp end target teams distribute parallel do
      print *, s
end program

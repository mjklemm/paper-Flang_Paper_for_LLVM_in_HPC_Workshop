subroutine temp_array
  implicit none
  integer :: x
  integer, dimension (2) :: my_array

  x = 42

  !$omp target
  my_array = [x, x*2]
  !$omp end target
end subroutine temp_array
subroutine saxpy(x, y, a, n)
    use iso_fortran_env, only: rt=>real32
    implicit none
    real(kind=rt), dimension(n) :: x
    real(kind=rt), dimension(n) :: y
    real(kind=rt) :: a
    integer :: n
    integer :: i
    !$omp target teams loop map(to:x)|\label{ln:SaxpyMapClause}|
    do i = 1, n
        y(i) = a * x(i) + y(i) 
    end do
end subroutine saxpy

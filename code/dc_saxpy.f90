subroutine saxpy2d(x, y, a, n, m)
    use iso_fortran_env, only: rt=>real32
    implicit none
    real(kind=rt), dimension(n,m) :: x, y
    real(kind=rt) :: a
    integer :: n, m, i, j
    do concurrent(i=1:n, j=1:m)
        y(i,j) = a * x(i,j) + y(i,j)
    end do
end subroutine saxpy2d

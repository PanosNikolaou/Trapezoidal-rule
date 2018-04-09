program main
    use types
    use functions
    use tools

    implicit none

    real(kind=dprec):: trapint,error,dx,a,b
    integer :: i,IUNIT

     a = 1.5_dprec
     b = 3.5_dprec

        IUNIT = 50

        open(NEWUNIT=IUNIT,FILE='data.dat',FORM="FORMATTED")
        do i=1,1000
            trapint = trapintng(a,b,i,f_tan)
            dx = abs((b-a)/i)
            error = abs(0.721922_dprec - trapint)
            print*,"error:",error
            write(IUNIT,*) error,dx
        end do
        close(IUNIT)

        call SYSTEM('gnuplot -p data_plot.plt')

end program main

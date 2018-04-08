program main
    use types
    use functions
    use tools

    implicit none

!    real(kind=sperc):: trapint,error,dx,a,b
    real(kind=dprec):: trapint,error,dx,a,b
!    real(kind=qperc):: trapint,error,dx,a,b
    integer :: i,IUNIT

!----------single precision

!    a = 1.5_sperc
!    b = 3.5_sperc

!----------double precision

     a = 1.5_dprec
     b = 3.5_dprec

!----------quad precision

!    a = 1.5_qperc
!    b = 3.5_qperc

        IUNIT = 50

        open(NEWUNIT=IUNIT,FILE='data.dat',FORM="FORMATTED")
        do i=1,1000
            trapint = trapintng(a,b,i,f_tan)
            dx = abs((b-a)/i)
            !a:15,b:3.5 sin(x) : 1.00719
            !a:15,b:3.5 log(x) : 1.77647
            !a:15,b:3.5 tan(x) : 0.721922
            !a:15,b:3.5 arctan(x) : 2.34688
            error = abs(0.721922_dprec - trapint)
            print*,"error:",error
            write(IUNIT,*) error,dx
        end do
        close(IUNIT)

        call SYSTEM('gnuplot -p data_plot.plt')

end program main

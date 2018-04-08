module tools
    use types
    implicit none

    public :: f,trapintng

    contains

    function trapintng(a,b,step,f)result(volume)

    use types
    use functions

    real(kind=dprec), intent(in) :: a,b
    real(kind=dprec) :: volume,dx,value1,value2
    integer, intent(in) :: step
    integer :: i

     interface
        function f(x) result(value)
        use types
         real(kind=dprec), intent(in) :: x
         real(kind=dprec) :: value
        end function f
     end interface

    volume = 0_dprec
    value1 = 0_dprec
    value2 = 0_dprec

    dx = abs((b-a)/step)

    Do i=0,step-1
            value1 = value1 + f(a+(i*dx))
    End do

    Do i=1,step
            value2 = value2 + f(a+(i*dx))
    End do

        volume = volume + (dx/2) * (value1+value2)

    print*, "the volume of integral is:",volume

    end function trapintng

    function f(x) result(value)
        use types
        real(kind=dprec), intent(in) :: x
        real(kind=dprec) :: value

        value = sin(x)

        return
    end function f

end module tools

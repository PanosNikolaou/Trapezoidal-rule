module types
    implicit none

    !single precision
    integer, parameter, public :: sprec=selected_real_kind(6,9)

    !double precision
    integer, parameter, public :: dprec=selected_real_kind(15,9)

    !quad precision
    integer, parameter, public :: qprec=selected_real_kind(20,9)

end module types

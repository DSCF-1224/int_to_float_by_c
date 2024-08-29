module int_to_float_by_c

    use , intrinsic :: iso_c_binding



    implicit none



    interface

        module pure function uint32_to_real32( i ) result( x ) bind(c)

            integer(c_int32_t), intent(in) :: i

            real(c_float) :: x

        end function uint32_to_real32



        module pure function uint32_to_real64( i ) result( x ) bind(c)

            integer(c_int32_t), intent(in) :: i

            real(c_double) :: x

        end function uint32_to_real64



        module pure function uint64_to_real32( i ) result( x ) bind(c)

            integer(c_int64_t), intent(in) :: i

            real(c_float) :: x

        end function uint64_to_real32



        module pure function uint64_to_real64( i ) result( x ) bind(c)

            integer(c_int64_t), intent(in) :: i

            real(c_double) :: x

        end function uint64_to_real64

    end interface



    interface uint_to_real32
        module procedure :: uint32_to_real32
        module procedure :: uint64_to_real32
    end interface uint_to_real32



    interface uint_to_real64
        module procedure :: uint32_to_real64
        module procedure :: uint64_to_real64
    end interface uint_to_real64

end module int_to_float_by_c

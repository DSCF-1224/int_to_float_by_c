program test

    use,      intrinsic :: iso_fortran_env
    use , non_intrinsic :: int_to_float_by_c

    implicit none



    integer(int32) :: i32
    integer(int64) :: i64



    i32 =   huge( i32 ) ; i32 = i32 + 2_int32 ; call test_uint32_to_real( i32 )
    i32 =   huge( i32 ) ; i32 = i32 + 1_int32 ; call test_uint32_to_real( i32 )
    i32 =   huge( i32 ) ;                     ; call test_uint32_to_real( i32 )
    i32 =   2_int32     ;                     ; call test_uint32_to_real( i32 )
    i32 =   1_int32     ;                     ; call test_uint32_to_real( i32 )
    i32 =   0_int32     ;                     ; call test_uint32_to_real( i32 )
    i32 = - 1_int32     ;                     ; call test_uint32_to_real( i32 )
    i32 = - 2_int32     ;                     ; call test_uint32_to_real( i32 )
    i32 = - huge( i32 ) ;                     ; call test_uint32_to_real( i32 )
    i32 = - huge( i32 ) ; i32 = i32 - 1_int32 ; call test_uint32_to_real( i32 )
    i32 = - huge( i32 ) ; i32 = i32 - 2_int32 ; call test_uint32_to_real( i32 )

    print *

    i64 =   huge( i64 ) ; i64 = i64 + 2_int64 ; call test_uint64_to_real( i64 )
    i64 =   huge( i64 ) ; i64 = i64 + 1_int64 ; call test_uint64_to_real( i64 )
    i64 =   huge( i64 ) ;                     ; call test_uint64_to_real( i64 )
    i64 =   2_int64     ;                     ; call test_uint64_to_real( i64 )
    i64 =   1_int64     ;                     ; call test_uint64_to_real( i64 )
    i64 =   0_int64     ;                     ; call test_uint64_to_real( i64 )
    i64 = - 1_int64     ;                     ; call test_uint64_to_real( i64 )
    i64 = - 2_int64     ;                     ; call test_uint64_to_real( i64 )
    i64 = - huge( i64 ) ;                     ; call test_uint64_to_real( i64 )
    i64 = - huge( i64 ) ; i64 = i64 - 1_int64 ; call test_uint64_to_real( i64 )
    i64 = - huge( i64 ) ; i64 = i64 - 2_int64 ; call test_uint64_to_real( i64 )



    contains



    subroutine test_uint32_to_real( i )

        integer(int32), intent(in) :: i

        print &!
            '(B64,I21,2ES16.8,2ES24.16)' , &!
            i                            , &!
            i                            , &!
            real( i , real32 )           , &!
            uint_to_real32( i )          , &!
            real( i , real64 )           , &!
            uint_to_real64( i )

    end subroutine test_uint32_to_real



    subroutine test_uint64_to_real( i )

        integer(int64), intent(in) :: i

        print &!
            '(B64,I21,2ES16.8,2ES24.16)' , &!
            i                            , &!
            i                            , &!
            real( i , real32 )           , &!
            uint_to_real32( i )          , &!
            real( i , real64 )           , &!
            uint_to_real64( i )

    end subroutine test_uint64_to_real

end program

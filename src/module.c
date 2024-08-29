#ifndef _INT_TO_FLOAT_BY_C_H
#define _INT_TO_FLOAT_BY_C_H

#include <stdint.h>



static uint32_t int32_to_uint32( const int32_t *const i )
{
    return (uint32_t)(*i);
}



static uint64_t int64_to_uint64( const int64_t *const i )
{
    return (uint64_t)(*i);
}



float uint32_to_real32( const int32_t *const i )
{
    return (float)int32_to_uint32(i);
}



double uint32_to_real64( const int32_t *const i )
{
    return (double)int32_to_uint32(i);
}



float uint64_to_real32( const int64_t *const i )
{
    return (float)int64_to_uint64(i);
}



double uint64_to_real64( const int64_t *const i )
{
    return (double)int64_to_uint64(i);
}

#endif /* _INT_TO_FLOAT_BY_C_H */

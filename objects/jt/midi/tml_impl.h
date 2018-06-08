#define TML_IMPLEMENTATION
//#define TML_IMPL_LOG LogTextMessage
#define TML_IMPL_LOG (void)


void * tml_memcpy (
    void * destination, 
    const void * source, 
    size_t num ) {
    char * cdest = (char *)destination;
    char * csource = (char *)source;
    TML_IMPL_LOG("tml_memcpy %08x to %08x", source, destination);
    
    int i;
    for (i=0;i<num;i++) {
        *cdest = *csource;
        cdest++;
        csource++;
    }
    return destination;
}

void * tml_malloc (size_t size) {
    void * result = sdram_malloc(size);
    TML_IMPL_LOG("tml_malloc %08x", result);
    return result;
}

void * tml_realloc( void *ptr, size_t new_size ) {
    void * result = sdram_malloc(new_size);
    TML_IMPL_LOG("tml_realloc %08x size %d", result, new_size);

    char * cdest = (char *)result;
    char * csource = (char *)ptr;    
    int i;
    for (i=0;i<new_size;i++) {
        *cdest = *csource;
        cdest++;
        csource++;
    }
    return result;
}
		
void tml_free( void* ptr ) {
    TML_IMPL_LOG("tml_free %08x", ptr);
}

#define TML_NO_STDIO

#define TML_MALLOC tml_malloc
#define TML_REALLOC tml_realloc
#define TML_FREE tml_free

#define TML_MEMCPY tml_memcpy

#include "tml.h"

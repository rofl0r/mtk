#include "dopestd.h"
#include "clipboard.h"

#define CLIPBOARD_SIZE 65536 

struct clipboard {
    char data[CLIPBOARD_SIZE];
    u32 length;
} the_clipboard;

int init_clipboard(struct dope_services *d);

static void clipboard_set(char *dataIn, u32 length){
    if(!dataIn) return;
    memcpy(the_clipboard.data, dataIn, MIN(length, CLIPBOARD_SIZE));
    the_clipboard.length = MIN(length, CLIPBOARD_SIZE);
}

//Returns the start address of the data and its length. Copying
//is the responsibility of the caller.
static void clipboard_get(char **dataOut, u32 *length){
    if((!dataOut) || (!length)) return;
    *dataOut = the_clipboard.data;
    *length = the_clipboard.length;
}

/**************************************
 ** Service structure of this module **
 **************************************/

static struct clipboard_services services = {
	clipboard_set,
    clipboard_get	
};

/************************
 ** Module entry point **
 ************************/

int init_clipboard(struct dope_services *d)
{
	d->register_module("Clipboard 1.0", &services);
	return 1;
}

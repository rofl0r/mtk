/*
 * \brief   MTK pool module
 *
 * Pool is the component provider of MTK.  Each
 * component can register at  Pool by specifying
 * an identifier string and a pointer to the its
 * service structure.
 * After that, the component's service structure
 * can be requested  by other components via the
 * associated identifier.
 */

/*
 * Copyright (C) 2002-2008 Norman Feske <norman.feske@genode-labs.com>
 * Genode Labs, Feske & Helmuth Systementwicklung GbR
 *
 * This file is part of the MTK package, which is distributed
 * under the terms of the GNU General Public License version 2.
 */

#include <stdio.h>
#include "mtkstd.h"

#define MAX_POOL_ENTRIES 100

struct pool_entry {
	char    *name;          /* id of system module */
	void    *structure;     /* system module structure */
};

static struct pool_entry pool[MAX_POOL_ENTRIES];
static int pool_size=0;


/**
 * Prototypes
 */
int pool_add(char *name,void *structure);
void pool_remove(char *name);
void *pool_get(char *name);


/**
 * Add new pool entry
 */
int pool_add(char *name,void *structure)
{
	int i;
	if (pool_size>=100) return 0;
	else {
		for (i=0;pool[i].name!=NULL;i++) {};

		pool[i].name=name;
		pool[i].structure=structure;

		pool_size++;
		INFO(printf("Pool(add): %s\n",name));
		return 1;
	}
}


/**
 * Remove poolentry from pool
 */
void pool_remove(char *name)
{
	int i;
	char *s;
	for (i=0;i<100;i++) {
		s=pool[i].name;
		if (s!=NULL) {
			if (mtk_streq(name,pool[i].name,255)) {
			    pool[i].name=NULL;
			    pool[i].structure=NULL;
			    pool_size--;
			    return;
			}
		}
	}
}


/**
 * Get structure of a specified pool entry
 */
void *pool_get(char *name)
{
	int i;
	char *s;
	for (i=0;i<MAX_POOL_ENTRIES;i++) {
		s=pool[i].name;
		if (s!=NULL) {
			if (mtk_streq(name,pool[i].name,255)) {
				INFO(printf("Pool(get): module matched: %s\n",name));
			    return pool[i].structure;
			}
		}
	}
	ERROR(printf("Pool(get): module not found: %s\n",name));
//  l4_sleep(10000);
	return NULL;
}

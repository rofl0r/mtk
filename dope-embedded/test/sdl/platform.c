/*
 * \brief  Dummy platform for SDL version
 * \author Norman Feske
 * \date   2008-08-17
 */

/* local includes */
#include "platform.h"

void set_leds(unsigned char leds_state) { }

void display_platform_images(void) { }

int init_platform(void) { return 0; }

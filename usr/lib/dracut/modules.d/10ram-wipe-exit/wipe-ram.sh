#!/bin/sh

## Copyright (C) 2023 - 2023 ENCRYPTED SUPPORT LP <adrelanos@whonix.org>
## Copyright (C) 2023 - 2023 Friedrich Doku <friedrichdoku@gmail.com>
## See the file COPYING for copying conditions.

ram_wipe_action() {
   local kernel_wiperam_exit
   kernel_wiperam_exit=$(getarg wiperamexit)


   if [ "$kernel_wiperam_exit" = "no" ]; then
	   info "INFO: Skip, because wiperamexit=no kernel parameter detected, OK."
	   return 0
   fi


   if [ "$kernel_wiperam_exit" != "yes" ]; then
	   info "INFO: Skip, becuase wiperamexit parameter is not used. "
	   return 0
   fi

   info "INFO: wiperamexit=yes. Running second RAM wipe... "
   
   sdmem -l -l -v
}
ram_wipe_action


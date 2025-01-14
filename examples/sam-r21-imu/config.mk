#
# Copyright (c) 2011 Atmel Corporation. All rights reserved.
# This file modified by A. Albino of Femto.io
#
# \asf_license_start
#
# \page License
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#
# 1. Redistributions of source code must retain the above copyright notice,
#    this list of conditions and the following disclaimer.
#
# 2. Redistributions in binary form must reproduce the above copyright notice,
#    this list of conditions and the following disclaimer in the documentation
#    and/or other materials provided with the distribution.
#
# 3. The name of Atmel may not be used to endorse or promote products derived
#    from this software without specific prior written permission.
#
# 4. This software may only be redistributed and used in connection with an
#    Atmel microcontroller product.
#
# THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
# WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
# EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
# ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
# DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
# OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
# HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
# STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
# ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.
#
# \asf_license_stop
#

# Path to top level ASF directory relative to this project directory.
# NOTE, you must download or checkout the Atmel Software Framework into
# the libraries directory!
#
# You can sym link the libraries folder into your project. That way, you don't 
# need to repeatedly copy/paste the same files all over the place.
PRJ_PATH = libraries/asf-3.21.0

# Target CPU architecture: cortex-m3, cortex-m4
ARCH = cortex-m0plus

# Target part: none, sam3n4 or sam4l4aa
PART = samr21e18a

# Application target name. Given with suffix .a for library and .elf for a
# standalone application.
TARGET_FLASH = sam_r21_imu_flash.elf
TARGET_SRAM = sam_r21_imu_sram.elf

# List of C source files.
CSRCS = sam_r21_imu.c \
       common/utils/interrupt/interrupt_sam_nvic.c        \
       common2/services/delay/sam0/systick_counter.c      \
       sam0/boards/femtobeacon/board_init.c               \
       sam0/drivers/extint/extint_callback.c              \
       sam0/drivers/extint/extint_sam_d_r/extint.c        \
       sam0/drivers/port/port.c                           \
       sam0/drivers/sercom/sercom.c                       \
       sam0/drivers/sercom/sercom_interrupt.c             \
       sam0/drivers/sercom/usart/usart.c                  \
       sam0/drivers/sercom/usart/usart_interrupt.c        \
       sam0/drivers/system/clock/clock_samd21_r21/clock.c \
       sam0/drivers/system/clock/clock_samd21_r21/gclk.c  \
       sam0/drivers/system/interrupt/system_interrupt.c   \
       sam0/drivers/system/pinmux/pinmux.c                \
       sam0/drivers/system/system.c                       \
       sam0/drivers/tc/tc_interrupt.c                     \
       sam0/drivers/tc/tc_sam_d_r/tc.c                    \
       sam0/utils/cmsis/samr21/source/gcc/startup_samr21.c \
       sam0/utils/cmsis/samr21/source/system_samr21.c     \
       sam0/utils/stdio/read.c                            \
       sam0/utils/stdio/write.c                           \
       sam0/utils/syscalls/gcc/syscalls.c                 \
       thirdparty/MPU9250/MPU9250.c                       \
       thirdparty/LwMesh/hal/src/hal.c                    \
       thirdparty/LwMesh/hal/src/halGpio.c                \
       thirdparty/LwMesh/hal/src/halPhy.c                 \
       thirdparty/LwMesh/hal/src/halStartup.c             \
       thirdparty/LwMesh/hal/src/halTimer.c

# List of assembler source files.
ASSRCS = 

INC_PATH = \
       common/boards                                      \
       common/services/serial                             \
       common/utils                                       \
       common2/services/delay                             \
       common2/services/delay/sam0                        \
       sam0/boards                                        \
       sam0/boards/femtobeacon                            \
       sam0/boards/femtobeacon/board_config               \
       sam0/drivers/extint                                \
       sam0/drivers/extint/extint_sam_d_r                 \
       sam0/drivers/port                                  \
       sam0/drivers/sercom                                \
       sam0/drivers/sercom/usart                          \
       sam0/drivers/sercom/i2c                            \
       sam0/drivers/sercom/spi                            \
       sam0/drivers/system                                \
       sam0/drivers/system/clock                          \
       sam0/drivers/system/clock/clock_samd21_r21         \
       sam0/drivers/system/interrupt                      \
       sam0/drivers/system/interrupt/system_interrupt_samr21 \
       sam0/drivers/system/pinmux                         \
       sam0/drivers/system/power                          \
       sam0/drivers/system/power/power_sam_d_r            \
       sam0/drivers/system/reset                          \
       sam0/drivers/system/reset/reset_sam_d_r            \
       sam0/drivers/tc                                    \
       sam0/drivers/tc/tc_sam_d_r                         \
       sam0/utils                                         \
       sam0/utils/cmsis/samr21/include                    \
       sam0/utils/cmsis/samr21/source                     \
       sam0/utils/header_files                            \
       sam0/utils/preprocessor                            \
       sam0/utils/stdio/stdio_serial                      \
       thirdparty/CMSIS/Include                           \
       thirdparty/CMSIS/Lib/GCC                           \
       thirdparty/MPU9250                                 \
       thirdparty/LwMesh/hal/atsamd21/inc                 \
       thirdparty/LwMesh/nwk/inc                          \
       thirdparty/LwMesh/phy/at86rf233/inc                \
       thirdparty/LwMesh/sys/inc

# Additional search paths for libraries.
LIB_PATH =  \
       thirdparty/CMSIS/Lib/GCC                          

# List of libraries to use during linking.
LIBS =  \
       arm_cortexM0l_math                                

# Path relative to top level directory pointing to a linker script.
LINKER_SCRIPT_FLASH = sam0/utils/linker_scripts/samr21/gcc/samr21e18a_flash.ld
LINKER_SCRIPT_SRAM  = sam0/utils/linker_scripts/samr21/gcc/samr21e18a_sram.ld

# Path relative to top level directory pointing to a linker script.
DEBUG_SCRIPT_FLASH = sam0/boards/femtobeacon/debug_scripts/gcc/femtobeacon_flash.gdb
DEBUG_SCRIPT_SRAM  = sam0/boards/femtobeacon/debug_scripts/gcc/femtobeacon_sram.gdb

# Project type parameter: all, sram or flash
PROJECT_TYPE        = flash

# Additional options for debugging. By default the common Makefile.in will
# add -g3.
DBGFLAGS = 

# Application optimization used during compilation and linking:
# -O0, -O1, -O2, -O3 or -Os
OPTIMIZATION = -O1

# Extra flags to use when archiving.
ARFLAGS = 

# Extra flags to use when assembling.
ASFLAGS = 

# Extra flags to use when compiling.

CFLAGS = -W -Wall --std=gnu99 -Os                         \
         -fdata-sections -ffunction-sections              \
         -funsigned-char -funsigned-bitfields             \
         -mcpu=cortex-m0plus -mthumb                      \
         -MD -MP

# Extra flags to use when preprocessing.
#
# Preprocessor symbol definitions
#   To add a definition use the format "-D name[=definition]".
#   To cancel a definition use the format "-U name".
#
# The most relevant symbols to define for the preprocessor are:
#   BOARD      Target board in use, see boards/board.h for a list.
#   EXT_BOARD  Optional extension board in use, see boards/board.h for a list.
CPPFLAGS = \
       -D ARM_MATH_CM0=true                               \
       -D BOARD=FEMTOBEACON                               \
       -D EXTINT_CALLBACK_MODE=true                       \
       -D SYSTICK_MODE                                    \
       -D TC_ASYNC=true                                   \
       -D USART_CALLBACK_MODE=true                        \
       -D __SAMR21E18A__                                  \
       -D HAL_ATSAMD21J18

# Extra flags to use when linking. SAM-BA Bootloader, (USB only) is 4k.
LDFLAGS =-Wl,--section-start=.text=0x1000 \
         -mcpu=cortex-m0plus -mthumb      \
         -Wl,--gc-sections

# Pre- and post-build commands
PREBUILD_CMD = 
POSTBUILD_CMD = 
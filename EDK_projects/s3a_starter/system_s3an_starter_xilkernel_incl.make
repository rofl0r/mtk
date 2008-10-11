#################################################################
# Makefile generated by Xilinx Platform Studio 
# Project:/media/blubb/genode/genode-fx/trunk/EDK_projects/s3a_starter/system_s3a_starter_xilkernel.xmp
#
# WARNING : This file will be re-generated every time a command
# to run a make target is invoked. So, any changes made to this  
# file manually, will be lost when make is invoked next. 
#################################################################

XILINX_EDK_DIR = /media/blubb/xilinx/edk92/
NON_CYG_XILINX_EDK_DIR = /media/blubb/xilinx/edk92/

SYSTEM = system

MHSFILE = system.mhs

MSSFILE = system_xilkernel.mss

FPGA_ARCH = spartan3a

DEVICE = xc3s700anfgg484-4

LANGUAGE = vhdl

SEARCHPATHOPT =  -lp /media/blubb/genode/genode-fx/trunk/

SUBMODULE_OPT = 

PLATGEN_OPTIONS = -p $(DEVICE) -lang $(LANGUAGE) $(SEARCHPATHOPT) $(SUBMODULE_OPT)

LIBGEN_OPTIONS = -mhs $(MHSFILE) -p $(DEVICE) $(SEARCHPATHOPT) \
                   $(MICROBLAZE_0_LIBG_OPT)

VPGEN_OPTIONS = -p $(DEVICE) $(SEARCHPATHOPT)

DOPE_TEST_XILKERNEL_OUTPUT_DIR = dope_test_xilkernel
DOPE_TEST_XILKERNEL_OUTPUT = $(DOPE_TEST_XILKERNEL_OUTPUT_DIR)/executable.elf

MICROBLAZE_BOOTLOOP = $(XILINX_EDK_DIR)/sw/lib/microblaze/mb_bootloop.elf
PPC405_BOOTLOOP = $(XILINX_EDK_DIR)/sw/lib/ppc405/ppc_bootloop.elf
PPC440_BOOTLOOP = $(XILINX_EDK_DIR)/sw/lib/ppc440/ppc440_bootloop.elf
BOOTLOOP_DIR = bootloops

MICROBLAZE_0_BOOTLOOP = $(BOOTLOOP_DIR)/microblaze_0.elf
MICROBLAZE_0_XMDSTUB = microblaze_0/code/xmdstub.elf

BRAMINIT_ELF_FILES =   $(MICROBLAZE_0_XMDSTUB) 
BRAMINIT_ELF_FILE_ARGS =   -pe microblaze_0  $(MICROBLAZE_0_XMDSTUB) 

ALL_USER_ELF_FILES = $(DOPE_TEST_XILKERNEL_OUTPUT) 

SIM_CMD = vsim

BEHAVIORAL_SIM_SCRIPT = simulation/behavioral/$(SYSTEM)_setup.do

STRUCTURAL_SIM_SCRIPT = simulation/structural/$(SYSTEM)_setup.do

TIMING_SIM_SCRIPT = simulation/timing/$(SYSTEM)_setup.do

DEFAULT_SIM_SCRIPT = $(BEHAVIORAL_SIM_SCRIPT)

MIX_LANG_SIM_OPT = -mixed yes

SIMGEN_OPTIONS = -p $(DEVICE) -lang $(LANGUAGE) $(SEARCHPATHOPT) $(BRAMINIT_ELF_FILE_ARGS) $(MIX_LANG_SIM_OPT)  -s mti

MICROBLAZE_0_XMDSTUB = microblaze_0/code/xmdstub.elf

LIBRARIES =  \
       microblaze_0/lib/libxil.a 
VPEXEC = virtualplatform/vpexec

LIBSCLEAN_TARGETS = microblaze_0_libsclean 

PROGRAMCLEAN_TARGETS = dope_test_xilkernel_programclean 

CORE_STATE_DEVELOPMENT_FILES = 

WRAPPER_NGC_FILES = implementation/microblaze_0_wrapper.ngc \
implementation/mb_plb_wrapper.ngc \
implementation/ilmb_wrapper.ngc \
implementation/dlmb_wrapper.ngc \
implementation/dlmb_cntlr_wrapper.ngc \
implementation/ilmb_cntlr_wrapper.ngc \
implementation/lmb_bram_wrapper.ngc \
implementation/rs232_dte_wrapper.ngc \
implementation/leds_8bit_wrapper.ngc \
implementation/dips_4bit_wrapper.ngc \
implementation/btns_4bit_wrapper.ngc \
implementation/ddr2_sdram_wrapper.ngc \
implementation/flash_wrapper.ngc \
implementation/xps_timer_1_wrapper.ngc \
implementation/flash_util_bus_split_0_wrapper.ngc \
implementation/clock_generator_0_wrapper.ngc \
implementation/debug_module_wrapper.ngc \
implementation/proc_sys_reset_0_wrapper.ngc \
implementation/xps_intc_0_wrapper.ngc \
implementation/plb_ps2_controller_0_wrapper.ngc \
implementation/plb_npi_vga_controller_0_wrapper.ngc

POSTSYN_NETLIST = implementation/$(SYSTEM).ngc

SYSTEM_BIT = implementation/$(SYSTEM).bit

DOWNLOAD_BIT = implementation/download.bit

SYSTEM_ACE = implementation/$(SYSTEM).ace

UCF_FILE = data/system.ucf

BMM_FILE = implementation/$(SYSTEM).bmm

BITGEN_UT_FILE = etc/bitgen.ut

XFLOW_OPT_FILE = etc/fast_runtime.opt
XFLOW_DEPENDENCY = __xps/xpsxflow.opt $(XFLOW_OPT_FILE)

XPLORER_DEPENDENCY = __xps/xplorer.opt
XPLORER_OPTIONS = -p $(DEVICE) -uc $(SYSTEM).ucf -bm $(SYSTEM).bmm -max_runs 7

FPGA_IMP_DEPENDENCY = $(BMM_FILE) $(POSTSYN_NETLIST) $(UCF_FILE) $(BITGEN_UT_FILE) $(XFLOW_DEPENDENCY)

#################################################################
# SOFTWARE APPLICATION DOPE_TEST_XILKERNEL
#################################################################

DOPE_TEST_XILKERNEL_SOURCES = /media/blubb/genode/genode-fx/trunk/dope-embedded/test_xilkernel/test.c /media/blubb/genode/genode-fx/trunk/dope-embedded/test_xilkernel/s3a_starter/platform.c 

DOPE_TEST_XILKERNEL_HEADERS = /media/blubb/genode/genode-fx/trunk/dope-embedded/test_xilkernel/genode-labs-banner.h /media/blubb/genode/genode-fx/trunk/dope-embedded/test_xilkernel/microblaze_logo.h /media/blubb/genode/genode-fx/trunk/dope-embedded/test_xilkernel/platform.h /media/blubb/genode/genode-fx/trunk/dope-embedded/test_xilkernel/spartan3a.h /media/blubb/genode/genode-fx/trunk/dope-embedded/test_xilkernel/xilinx_logo.h /media/blubb/genode/genode-fx/trunk/dope-embedded/include/dopedef.h /media/blubb/genode/genode-fx/trunk/dope-embedded/include/dopelib.h /media/blubb/genode/genode-fx/trunk/dope-embedded/include/keycodes.h /media/blubb/genode/genode-fx/trunk/dope-embedded/include/vscreen.h 

DOPE_TEST_XILKERNEL_CC = mb-gcc
DOPE_TEST_XILKERNEL_CC_SIZE = mb-size
DOPE_TEST_XILKERNEL_CC_OPT = -O2
DOPE_TEST_XILKERNEL_CFLAGS = 
DOPE_TEST_XILKERNEL_CC_SEARCH = # -B
DOPE_TEST_XILKERNEL_LIBPATH = -L./microblaze_0/lib/   -L../../dope-embedded/lib/s3a_starter_xil/ 
DOPE_TEST_XILKERNEL_INCLUDES = -I./microblaze_0/include/  -I/media/blubb/genode/genode-fx/trunk/dope-embedded/test_xilkernel/ -I/media/blubb/genode/genode-fx/trunk/dope-embedded/include/ # -I
DOPE_TEST_XILKERNEL_LFLAGS =   -ldope -lxilkernel 
DOPE_TEST_XILKERNEL_LINKER_SCRIPT = dope_test_xilkernel_linker_script.ld
DOPE_TEST_XILKERNEL_LINKER_SCRIPT_FLAG = -Wl,-T -Wl,$(DOPE_TEST_XILKERNEL_LINKER_SCRIPT) 
DOPE_TEST_XILKERNEL_CC_DEBUG_FLAG =  -g 
DOPE_TEST_XILKERNEL_CC_PROFILE_FLAG = # -pg
DOPE_TEST_XILKERNEL_CC_GLOBPTR_FLAG= # -mxl-gp-opt
DOPE_TEST_XILKERNEL_MODE = executable
DOPE_TEST_XILKERNEL_LIBG_OPT = -$(DOPE_TEST_XILKERNEL_MODE) microblaze_0
DOPE_TEST_XILKERNEL_CC_INFERRED_FLAGS= -mno-xl-soft-mul -mxl-barrel-shift -mxl-pattern-compare -mno-xl-soft-div -mcpu=v7.00.a 
DOPE_TEST_XILKERNEL_CC_START_ADDR_FLAG=  #  # -Wl,-defsym -Wl,_TEXT_START_ADDR=
DOPE_TEST_XILKERNEL_CC_STACK_SIZE_FLAG=  #  # -Wl,-defsym -Wl,_STACK_SIZE=
DOPE_TEST_XILKERNEL_CC_HEAP_SIZE_FLAG=  #  # -Wl,-defsym -Wl,_HEAP_SIZE=
DOPE_TEST_XILKERNEL_OTHER_CC_FLAGS= $(DOPE_TEST_XILKERNEL_CC_GLOBPTR_FLAG)  \
                  $(DOPE_TEST_XILKERNEL_CC_START_ADDR_FLAG) $(DOPE_TEST_XILKERNEL_CC_STACK_SIZE_FLAG) $(DOPE_TEST_XILKERNEL_CC_HEAP_SIZE_FLAG)  \
                  $(DOPE_TEST_XILKERNEL_CC_INFERRED_FLAGS)  \
                  $(DOPE_TEST_XILKERNEL_LINKER_SCRIPT_FLAG) $(DOPE_TEST_XILKERNEL_CC_DEBUG_FLAG) $(DOPE_TEST_XILKERNEL_CC_PROFILE_FLAG) 

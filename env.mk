CROSS_COMPILE=
CC=$(CROSS_COMPILE)gcc
AR=$(CROSS_COMPILE)ar
INC=-I$(TOP_DIR)/libgpio
CFLAG = -fPIC

vpath %.so $(TOP_DIR)/lib
vpath %.a $(TOP_DIR)/lib
vpath %.h $(TOP_DIR)/include
V=1
ifeq ($(V), 1)
	Q=
	E=true
else 
	Q=@
	E=echo
endif

export CC AR 


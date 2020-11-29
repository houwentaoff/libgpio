default:all


tips:
	-@echo  "\033[32m Building libgpio ... \033[0m"

ifndef TOP_DIR
TOP_DIR = $(shell pwd)/../../
endif

include ../env.mk

INC+= -I../include

LD:= -lpthread
LIBMODULE := gpio
LIB := lib$(LIBMODULE).so lib$(LIBMODULE).a

all:tips $(LIB)

CFLAGS+=$(INC)
LDFLAGS+=$(LD)

lib$(LIBMODULE).so:gpio.o 
	-@mkdir -p ../lib
	$(Q)$(CC) -shared -fPIC -o $@ $^
	@$(E) "  Shared " $<
	cp -a $@ ../lib/ -rf

lib$(LIBMODULE).a:gpio.o 
	-@mkdir -p ../lib
	@$(E) "  AR " $<
	$(Q)$(AR) rucs  $@ $^ 
	cp -a $@ ../lib/ -rf

%.o:%.c
	$(Q)$(CC) -g -c $(CFLAGS) $< -o $@
	@$(E) "  CC " $<

clean:
	-@$(RM) *.o *.a ../lib/*.a ../lib/*.so

install:
	-@install -v ../lib/*.a $(DST_DIR)
	-@install -v ../lib/*.so $(DST_DIR)

.PHONY:clean

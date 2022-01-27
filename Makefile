KERNEL_SRC ?= /lib/modules/`uname -r`/build

SRC := $(shell pwd)

all:
	$(MAKE) -C $(KERNEL_SRC) M=$(SRC) ARCH=$(ARCH) CROSS_COMPILE=$(CROSS_COMPILE)

clean:
	rm -f *.o *.ko *.mod.c .*.cmd

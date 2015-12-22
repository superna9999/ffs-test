# Makefile for USB tools (copied from the Linux kernel)

CC = $(CROSS_COMPILE)gcc
PTHREAD_LIBS = -lpthread -ldl
WARNINGS = -Wall -Wextra
CFLAGS = $(WARNINGS) -g -I$(KERNEL_PATH) -march=armv7-a -mtune=cortex-a5 -mfpu=neon -mfloat-abi=softfp -O3
LDFLAGS = $(PTHREAD_LIBS) -march=armv7-a -mtune=cortex-a5 -mfpu=neon -mfloat-abi=softfp

all: ffs-test ffs-test-genuine
%: %.c
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS)

clean:
	$(RM) ffs-test ffs-test-genuine

# Makefile for USB tools (copied from the Linux kernel)

CC = $(CROSS_COMPILE)gcc
PTHREAD_LIBS = -lpthread -ldl
WARNINGS = -Wall -Wextra
CFLAGS = $(WARNINGS) -g -I$(KERNEL_PATH)
LDFLAGS = $(PTHREAD_LIBS)

all: ffs-test
%: %.c
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS)

clean:
	$(RM) ffs-test

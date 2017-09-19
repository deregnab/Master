CC      = gcc

CFLAGS  =
LDFLAGS =

all:   display_stack clean
try_mul: try_mul.o try.o try.h
display_stack: display_stack.o
%.o: %.c
	${CC} ${CFLAGS} -c $<
%: %.o
	${CC} ${LDFLAGS} -o $@ $^
%: %.c
clean:
	rm -f core *.o

.PHONY: all clean

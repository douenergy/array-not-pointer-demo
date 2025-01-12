CC = clang
CFLAGS = -Wall -Wextra

all: array_demo

array_demo: main.o foo.o
	$(CC) $(CFLAGS) -o array_demo main.o foo.o

main.o: main.c
	$(CC) $(CFLAGS) -c main.c

foo.o: foo.c
	$(CC) $(CFLAGS) -c foo.c

clean:
	rm -f array_demo *.o
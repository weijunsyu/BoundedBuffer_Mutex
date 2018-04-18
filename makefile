all: bbuffer

bbuffer.o: bbuffer.c
	gcc -c bbuffer.c -o bbuffer.o -Wall -pedantic -pthread -std=c99


bbuffer: bbuffer.o
	gcc bbuffer.o -o bbuffer -Wall -pedantic -pthread -std=c99

clean:
	rm -f bbuffer bbuffer.o
.PHONY: all clean

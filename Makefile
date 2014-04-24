all: example

WARNINGS = -Wall
DEBUG = -ggdb
OPTIMIZE = -O2 -mtune=native

CFLAGS = $(shell pkg-config --cflags libmongoc-1.0)
LIBS = $(shell pkg-config --libs libmongoc-1.0)

example: example.c
	$(CC) -o $@ $(WARNINGS) $(DEBUG) $(OPTIMIZE) $(CFLAGS) $(LIBS) example.c

clean:
	rm -f example

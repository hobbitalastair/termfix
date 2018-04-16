CC = gcc
CFLAGS := -Wall -Werror -O2 -g
PREFIX := /usr
BINDIR := $(PREFIX)/bin
BIN = termfix

all: $(BIN)

%: %.c
	$(CC) -o $@ $< $(LIBS) $(CFLAGS)

install: $(BIN)
	for f in $(BIN); do install -Dm755 $$f $(DESTDIR)$(BINDIR)/$$f; done

clean:
	rm -f $(BIN)

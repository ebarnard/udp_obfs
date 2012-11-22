CC = gcc
PROGRAMS := udp_obfs

all: $(PROGRAMS)

udp_obfs:
	$(CC) -o udp_obfs udp_obfs.c

# Builds then installs

prefix:=/usr/local

install: all
	test -d $(prefix) || mkdir $(prefix)
	test -d $(prefix)/bin || mkdir $(prefix)/bin
	for prog in $(PROGRAMS); do \
		install -m 0755 $$prog $(prefix)/bin; \
	done

clean:
	rm -f $(PROGRAMS)
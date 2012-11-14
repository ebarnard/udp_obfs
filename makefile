all:
	mkdir -p bin
	gcc -o bin/udp_obfs udp_obfs.c
	
clean:
	rm -rf bin/*
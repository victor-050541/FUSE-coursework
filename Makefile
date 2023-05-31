COMPILER = gcc 
FILESYSTEM_FILES = FS.c

build: $(FILESYSTEM_FILES)
	$(COMPILER) -pedantic -W -Wall $(FILESYSTEM_FILES) -o FS `pkg-config fuse --cflags --libs`
	echo 'To Mount: ./FS -f [mount point]'

clean:
	rm FS

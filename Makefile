COMPILER = gcc
FILESYSTEM_FILES = FS.c

build: $(FILESYSTEM_FILES)
	$(COMPILER) $(FILESYSTEM_FILES) -o FS `pkg-config fuse --cflags --libs`
	echo 'To Mount: ./FS-f [mount point]'

clean:
	rm FS

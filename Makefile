CC = clang-6.0
CCFLAGS = -fsanitize=memory -fno-omit-frame-pointer -g
# .bin (binary) means it is an executable

all: Assign2.bin    

# to make anything (%) .bin requires the same anything .o (object)
# take CC ... (more later)

%.bin: %.o
	$(CC) $(CCFLAGS) -o $@ $<

%.o: %.c
	$(CC) $(CCFLAGS) -c $< -o $@
	
clean:
	rm -rf *.bin

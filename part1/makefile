NASM = nasm
LD = ld

NASM_FLAGS = -f elf64
LD_FLAGS =

OBJECT_FILE = hello.o
EXEC_FILE = hello

all: $(EXEC_FILE)

$(OBJECT_FILE): helloWorld.s
	$(NASM) $(NASM_FLAGS) -o $@ $<

$(EXEC_FILE): $(OBJECT_FILE)
	$(LD) $(LD_FLAGS) -o $@ $<

clean:
	rm -rf $(OBJECT_FILE) $(EXEC_FILE)

.PHONY: all clean


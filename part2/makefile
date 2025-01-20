NASM = nasm
LD = ld

NASM_FLAGS = -f elf64
LD_FLAGS =

SRC_FILE = cmpSum.s
OBJECT_FILE = cmpSum.o
EXEC_FILE = cmpSum

all: $(EXEC_FILE)

$(OBJECT_FILE): $(SRC_FILE)
	$(NASM) $(NASM_FLAGS) -o $@ $<

$(EXEC_FILE): $(OBJECT_FILE)
	$(LD) $(LD_FLAGS) -o $@ $<

clean:
	rm -rf $(OBJECT_FILE) $(EXEC_FILE)

.PHONY: all clean


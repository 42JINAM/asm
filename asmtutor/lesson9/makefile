# Makefile for assembling and linking helloworld-input.asm

ASM = nasm
LD = ld
ASMFLAGS = -f elf64
LDFLAGS = 

TARGET = helloworld-input
SRC = helloworld-input.s

all: $(TARGET)

$(TARGET): $(SRC)
	$(ASM) $(ASMFLAGS) -o $(TARGET).o $(SRC)
	$(LD) $(LDFLAGS) -o $(TARGET) $(TARGET).o

clean:
	rm -f $(TARGET) $(TARGET).o


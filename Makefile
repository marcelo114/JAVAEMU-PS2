EE_BIN = JAVAEMU.ELF
EE_OBJS = src/main.o
EE_LIBS = -ldebug

all: $(EE_BIN)

clean:
	rm -f src/*.o $(EE_BIN)

include $(PS2SDK)/samples/Makefile.pref
include $(PS2SDK)/samples/Makefile.eeglobal

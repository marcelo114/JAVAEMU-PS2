EE_BIN = JAVAEMU.ELF
# Esta linha diz para compilar o main.c que está dentro de src
EE_OBJS = src/main.o
EE_LIBS = -ldebug

include $(PS2SDK)/samples/Makefile.pref
include $(PS2SDK)/samples/Makefile.eeglobal

clean:
	rm -f src/*.o $(EE_BIN)

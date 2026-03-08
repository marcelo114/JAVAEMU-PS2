EE_BIN = JAVAEMU.ELF
# Procura todos os arquivos .c dentro de src e subpastas
EE_OBJS = $(patsubst %.c,%.o,$(wildcard src/*.c) $(wildcard src/**/*.c))
EE_LIBS = -lpad -ldebug -lgraph -ldraw -lpacket -ldma -lm

include $(PS2SDK)/samples/Makefile.pref
include $(PS2SDK)/samples/Makefile.eeglobal

clean:
	rm -f src/*.o src/**/*.o $(EE_BIN)

# Nome do executável final (mude para java.elf se quiser)
EE_BIN = java.elf

# Seus arquivos objeto (.o) – adicione todos os .c/.cpp que você tem
EE_OBJS = main.o  # Exemplo: mude para java.o se o fonte for java.c

# Bibliotecas básicas (adicione mais se precisar, ex: -lpad para controle)
EE_LIBS = -lkernel -lc

# Regras padrão
all: $(EE_BIN)

clean:
	rm -f *.elf *.o *.a

# Includes corretos do PS2SDK (NUNCA use /samples/ absoluto!)
include $(PS2SDK)/samples/Makefile.pref
include $(PS2SDK)/samples/Makefile.eeglobal

# Nome do arquivo final que você vai colocar no PS2
EE_BIN = JAVAEMU.ELF

# Pega todos os arquivos .c dentro da pasta src e subpastas
EE_OBJS = $(patsubst %.c,%.o,$(wildcard src/*.c))

# Bibliotecas padrão do PS2 para gráficos, controle e depuração
EE_LIBS = -lpad -ldebug -lgraph -ldraw -lpacket -ldma -lm

# Inclui as definições padrão do PS2SDK que já estão no servidor do GitHub
include $(PS2SDK)/samples/Makefile.pref
include $(PS2SDK)/samples/Makefile.eeglobal

# Comando para limpar arquivos antigos antes de compilar
clean:
	rm -f $(EE_OBJS) $(EE_BIN)

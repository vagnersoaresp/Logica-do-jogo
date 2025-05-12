# Makefile para o projeto Super Trunfo em C

# Compilador
CC = gcc

# Flags de compilação
# -Wall: Habilita todos os warnings comuns
# -Wextra: Habilita warnings extras
# -pedantic: Emite todos os warnings exigidos pelo padrão ISO C
# -std=c99: Especifica o padrão C99 (ou c11, c17 se preferir)
# -g: Inclui informações de debug
CFLAGS = -Wall -Wextra -pedantic -std=c99 -g

# Diretório dos fontes
SRC_DIR = src

# Arquivos fonte (.c)
# Busca todos os arquivos .c dentro do diretório SRC_DIR
SRCS = $(wildcard $(SRC_DIR)/*.c)

# Arquivos objeto (.o)
# Substitui a extensão .c por .o nos arquivos fonte
OBJS = $(SRCS:.c=.o)

# Nome do executável final
TARGET = super_trunfo

# Regra principal: compila tudo
all: $(TARGET)

# Regra para criar o executável final
# $(CC) $(CFLAGS) -o $@ $(OBJS)
# O -o $@ especifica que o nome do arquivo de saída é o nome do target (TARGET)
# $^ são todas as dependências (OBJS)
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^ 

# Regra para compilar arquivos .c em arquivos .o
# $< é o primeiro pré-requisito (o arquivo .c)
# $@ é o nome do target (o arquivo .o)
$(SRC_DIR)/%.o: $(SRC_DIR)/%.c $(SRC_DIR)/carta.h $(SRC_DIR)/jogo.h $(SRC_DIR)/menu.h
	$(CC) $(CFLAGS) -c $< -o $@

# Regra para limpar arquivos compilados e o executável
clean:
	rm -f $(OBJS) $(TARGET)

# Phony targets são targets que não representam arquivos
.PHONY: all clean


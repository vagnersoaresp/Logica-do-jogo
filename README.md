# Super Trunfo em C

Este projeto implementa uma simulação do jogo Super Trunfo em C, com foco nas estruturas de decisão e comparação entre cartas. O programa evolui em complexidade através de três desafios, demonstrando diferentes técnicas de programação em C.

## Descrição do Projeto

O Super Trunfo é um jogo de cartas onde cada carta possui diferentes atributos numéricos. Os jogadores comparam esses atributos para determinar o vencedor de cada rodada. Este projeto implementa a lógica de comparação entre cartas, permitindo ao jogador escolher entre diferentes atributos através de menus interativos.

## Estrutura do Projeto

O projeto está organizado de forma modular:

- `src/carta.h` e `src/carta.c`: Definição da estrutura de dados para as cartas e funções relacionadas
- `src/jogo.h` e `src/jogo.c`: Lógica de comparação de cartas para os três desafios
- `src/menu.h` e `src/menu.c`: Funções para exibir menus e obter entrada do usuário
- `src/main.c`: Ponto de entrada do programa, orquestrando os três desafios
- `Makefile`: Automatiza o processo de compilação

## Como Compilar

Para compilar o projeto, você precisa ter o GCC e o Make instalados. Execute os seguintes comandos:

```bash
# Instalar dependências (se necessário)
sudo apt-get update
sudo apt-get install -y gcc make

# Compilar o projeto
cd super_trunfo_c
make clean
make
```

## Como Executar

Após compilar, execute o programa:

```bash
./super_trunfo
```

O programa irá guiá-lo através dos três desafios, permitindo que você escolha atributos para comparação e veja os resultados.

## Desafios Implementados

### Desafio 1: Comparação Simples

- Implementa a comparação de cartas com base em um único atributo
- Utiliza estruturas de decisão `if` e `if-else`
- Menu interativo simples para escolha do atributo

### Desafio 2: Múltiplos Atributos e Menus Avançados

- Refatora o menu de escolha de atributos para utilizar `switch`
- Expande a lógica de comparação para considerar múltiplos atributos
- Utiliza operadores lógicos e estruturas de decisão aninhadas e encadeadas (`if-else if`)

### Desafio 3: Lógica Complexa com Dois Atributos

- Adapta a lógica para permitir a comparação com base em dois atributos:
  - Um atributo principal para comparação inicial
  - Um atributo secundário para desempate
- Implementa o uso do operador ternário em partes da lógica de comparação
- Integra todas as estruturas de decisão aprendidas para criar uma lógica mais complexa

## Detalhes de Implementação

### Estrutura de Dados

Cada carta é representada por uma estrutura `Carta` que contém:
- ID único
- Nome da carta
- Array de atributos numéricos (Força, Velocidade, Peso, Inteligência, Defesa)
- Nomes dos atributos para exibição

### Lógica de Comparação

- Para a maioria dos atributos, o maior valor vence
- Para o atributo "Peso", o menor valor vence (regra especial)
- No Desafio 3, em caso de empate no atributo principal, o secundário é usado para desempate

### Menus Interativos

- Desafio 1: Menu simples com entrada numérica
- Desafio 2: Menu implementado com `switch` para escolha de atributo
- Desafio 3: Menu para escolha de dois atributos (principal e secundário)

## Autor

Este projeto foi desenvolvido como parte de um desafio acadêmico para a disciplina de Lógica de Programação.

## Prazo de Entrega

17/06/2025

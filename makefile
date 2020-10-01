
arg = 2020
BIN = a.out
FLAGS = -Wall -std=c99 -lm

clean: run
	rm  $(BIN)

run: $(BIN)
	./$(BIN) $(arg)

$(BIN): conversion.c con.c
	gcc -o $(BIN) conversion.c $(FLAGS)


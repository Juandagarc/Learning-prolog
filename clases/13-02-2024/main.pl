# Hello world in prollog

animal(perro).
animal(gato).
animal(canguro).

arbol(palmera).
flor(margarita).

vegetal(X) :- arbol(X).
vegetal(X) :- flor(X).
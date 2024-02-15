madre_de(yuely,juan).
madre_de(yuely,danna).
madre_de(chila,yuely).
madre_de(greys,kelly).

padre_de(sergio,danna).
padre_de(sergio,juan).
padre_de(fraincito,joel).
padre_de(vicente,sergio).
padre_de(efrain,yuely).
padre_de(efrain,fraincito).



hijo_de(Papa,Hijo) :- padre_de(Hijo,Papa); madre_de(Hijo,Papa).
hermano_de(Hermano,Hermano1) :- padre_de(Hermano,Papa), padre_de(Hermano1,Papa), Hermano \= Hermano1.
abuelo_de(Abuelo,Nieto) :- padre_de(Abuelo,Hijo), padre_de(Hijo,Nieto); padre_de(Abuelo,Hijo), madre_de(Hijo,Nieto);
                        madre_de(Abuelo,Hijo), padre_de(Hijo,Nieto); madre_de(Abuelo,Hijo), madre_de(Hijo,Nieto).
tio_de(Tio,Sobrino) :- hermano_de(Tio,Padre), hijo_de(Padre,Sobrino).
sobrino_de(Sobrino,Tio) :- tio_de(Tio,Sobrino).
primo_de(Primo,Primo1) :- sobrino_de(Primo,Padre), hijo_de(Padre,Primo1).
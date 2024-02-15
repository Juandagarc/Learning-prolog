%Abuelas-homero%
madre_de(mona,homero).
madre_de(mona,herbert).
%Abuelas-marge%
madre_de(jaqueline,marge).
madre_de(jaqueline,patty).
madre_de(jaqueline,selma).
%Nietas-marge%
madre_de(selma,ling).
%Nietas-principales%
madre_de(marge,bart).
madre_de(marge,lisa).
madre_de(marge,maggie).

%Abuelos-homero%
padre_de(abraham,homero).
padre_de(abraham,herbert).
%Abuelos-marge%
padre_de(clancy,marge).
padre_de(clancy,patty).
padre_de(clancy,selma).
%nietos-principales%
padre_de(homero,bart).
padre_de(homero,lisa).
padre_de(homero,maggie).

%Hombres%
hombre(bart).

%mujeres%
mujer(lisa).
mujer(maggie).
mujer(ling).


hija_de(Hija, Padre) :- (madre_de(Padre, Hija); padre_de(Padre, Hija)), (mujer(Hija); madre_de(Hija, _)).
hijo_de(Hijo, Padre) :- (madre_de(Padre, Hijo); padre_de(Padre, Hijo)), (hombre(Hijo); padre_de(Hijo, _)).

abuelo_de(Abuelo, Nieto) :- padre_de(Abuelo, Hijo), (padre_de(Hijo, Nieto); madre_de(Hijo, Nieto)).
abuela_de(Abuela, Nieto) :- madre_de(Abuela, Hija), (padre_de(Hija, Nieto); madre_de(Hija, Nieto)).

nieto_de(Nieto, Abuelo) :- (abuelo_de(Abuelo, Nieto); abuela_de(Abuelo, Nieto)) , hombre(Nieto).
nieta_de(Nieta, Abuela) :- (abuelo_de(Abuela, Nieta); abuela_de(Abuela, Nieta)) , mujer(Nieta).

hermano_de(Hermano, Hermano1) :- (padre_de(Hermano,_) ; hombre(Hermano)) , (padre_de(Padre, Hermano), padre_de(Padre, Hermano1)), Hermano \= Hermano1.
hermana_de(Hermana, Hermana1) :- (madre_de(Hermana,_) ; mujer(Hermana)) , (madre_de(Madre, Hermana), madre_de(Madre, Hermana1)), Hermana \= Hermana1.

tio_de(Tio, Sobrino) :- hermano_de(_, Tio), (padre_de(_, Sobrino) ; madre_de(_,Sobrino)).
tia_de(Tia, Sobrino) :- hermana_de(_, Tia), (padre_de(_, Sobrino) ; madre_de(_,Sobrino)).

primo_de(Primo, Primo1) :- (tio_de(_, Primo1);tia_de(_, Primo1) ), hijo_de(Primo, _).
prima_de(Prima, Prima1) :- (tio_de(_, Prima1);tia_de(_, Prima1) ), hija_de(Prima, _).
orbita_alrededor_de(luna, planeta).
orbita_alrededor_de(luna, tierra).
orbita_alrededor_de(venus, sol).
orbita_alrededor_de(tierra, sol).

planeta(venus).
planeta(tierra).
estrella(sol).


cuerpo_celeste(X) :- orbita_alrededor_de(X, _) ; planeta(X) ; estrella(X).
existe_conexion(vancouver, edmonton, 16 ).
existe_conexion(vancouver, calgary, 13 ).
existe_conexion(edmonton, saskatoon, 12).
existe_conexion(calgary, edmonton, 4).
existe_conexion(calgary, regina, 14).
existe_conexion(saskatoon, calgary, 9).
existe_conexion(saskatoon, winnipeg, 20).
existe_conexion(regina, saskatoon, 7).
existe_conexion(regina, winnipeg, 4).

viaje(CiudadA, CiudadB, Costo) :-
    (
        existe_conexion(CiudadA, Conexion, Costo1),
        existe_conexion(Conexion, CiudadB, Costo2),
        Costo is Costo1 + Costo2
    ).


    

costo(CiudadA, CiudadB, Costo) :-
    existe_conexion(CiudadA, CiudadB, Costo);
    viaje(CiudadA, Conexion,Costo2),
    costo(Conexion, CiudadB, Costo1),
    Costo is Costo1 + Costo2.
    


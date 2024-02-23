existe_conexion(vancouver, edmonton, 16 ).
existe_conexion(vancouver, calgary, 13 ).
existe_conexion(edmonton, saskatoon, 12).
existe_conexion(calgary, edmonton, 4).
existe_conexion(calgary, regina, 14).
existe_conexion(saskatoon, calgary, 9).
existe_conexion(saskatoon, winnipeg, 20).
existe_conexion(regina, saskatoon, 7).
existe_conexion(regina, winnipeg, 4).

tiene_aristas(Ciudad):- existe_conexion(Ciudad, _, _).

existe_conexion(CiudadA, CiudadB):-existe_conexion(CiudadA,CiudadB,_).

ruta_costo(Origen, Destino, Costo):-
  existe_conexion(X, Intermedia, Costo1),
  existe_conexion(Intermedia, Destino, Costo2),
  Costo is Costo1 + Costo2.

%--CONSULT: el_costo_de_x_a_z_por_y_es(vancouver, saskatoon, Costo).--%

costos_y_conexion_de(X, Y, Z):- existe_conexion(X, Y, Z).


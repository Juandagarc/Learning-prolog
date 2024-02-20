venderArmas(coronelWest).
nacionesHostiles(estadosUnidos, coreaDelSur).
nacionalidad(estadosUnidos).

criminal_de_(Persona, Nacionalidad) :- ( venderArmas(Persona) , nacionalidad(Nacionalidad) , nacionesHostiles(Nacionalidad, coreaDelSur) ).


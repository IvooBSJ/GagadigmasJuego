Class {
	#name : #TableroDuelo,
	#superclass : #BorderedMorph,
	#instVars : [
		'jugador1',
		'jugador2',
		'pregunta',
		'respuesta',
		'puntaje1',
		'puntaje2',
		'textomedio',
		'textoJugAct'
	],
	#category : #'TPI-2024'
}

{ #category : #'as yet unclassified' }
TableroDuelo >> crearTableroPreguntas [
    | preguntaMorph botonMorphs offset |
    
    preguntaMorph := StringMorph new.
    preguntaMorph contents: '¿Cuál es la capital de Francia?'.
    preguntaMorph color: Color black.
    preguntaMorph position: 80@50. "Posición relativa dentro del tablero de preguntas"
    
    offset := 120. "Distancia inicial desde la parte superior"
    botonMorphs := #('París' 'Londres' 'Roma' 'Berlín') collect: [ :opcion |
        | boton |
        boton := SimpleButtonMorph new.
        boton label: opcion.
        boton target: self; actionSelector: #respuestaSeleccionada:; arguments: {opcion}.
        boton color: Color lightGray.
        boton borderWidth: 1; borderColor: Color black.
        boton extent: 200@30.
        boton position: (250 - boton width // 2) @ offset. "Centrado horizontalmente"
        offset := offset + 50. "Incrementar para colocar los botones uno debajo del otro"
		  boton.
    ].
    
    ^ BorderedMorph new
        extent: 320@350;
        color: Color gray;
        addMorph: preguntaMorph;
        addAllMorphs: botonMorphs.

]

{ #category : #'as yet unclassified' }
TableroDuelo >> iniciarTableroDuelo [
    | tableroPrincipal tableroPuntajes tableroPreguntas espacioPreguntas |
    
    "Crear el contenedor principal"
    tableroPrincipal := BorderedMorph new.
    tableroPrincipal color: Color gray.
    tableroPrincipal extent: 320@350. "Dimensiones totales del contenedor"
    
    "Agregar el tablero de puntajes al contenedor principal"
    tableroPuntajes := (self tamaño: 10 colorp1: Color red colorp2: Color blue). "Llamada a tu constructor existente"
    tableroPrincipal addMorph: tableroPuntajes.
    
    "Calcular el espacio restante para las preguntas"
    espacioPreguntas := tableroPrincipal height - tableroPuntajes height.
    
    "Crear el tablero de preguntas"
    tableroPreguntas := (self crearTableroPreguntas).
    tableroPrincipal addMorph: tableroPreguntas.

    "Mostrar el contenedor principal en el mundo"
    tableroPrincipal openInWorld.
]

{ #category : #initialization }
TableroDuelo >> initialize [
super initialize .

jugador1 := StringMorph new.
jugador1 contents:'Jugador 1'.
jugador1 color: Color black.

puntaje1  := StringMorph new.
puntaje1 contents:'0'.
puntaje1 color: Color black.

jugador2 := StringMorph new.
jugador2 contents:'Jugador 2'.
jugador2 color: Color black.

puntaje2 := StringMorph new.
puntaje2 contents:'0'.
puntaje2 color: Color black.

textomedio  := StringMorph new.
textomedio  contents:'Jug. Actual:'.
textomedio  color: Color black.

textoJugAct  := StringMorph new.
textoJugAct  contents:'Jugador x'.
textoJugAct  color: Color black.
]

{ #category : #accessing }
TableroDuelo >> jugador1 [

	^ jugador1
]

{ #category : #accessing }
TableroDuelo >> jugador1: anObject [

	jugador1 := anObject
]

{ #category : #accessing }
TableroDuelo >> jugador2 [

	^ jugador2
]

{ #category : #accessing }
TableroDuelo >> jugador2: anObject [

	jugador2 := anObject
]

{ #category : #'as yet unclassified' }
TableroDuelo >> mostrarPregunta: preg conOpciones: opciones [
    | preguntaMorph botonMorphs tableroPregunta offset |
    
    "Crear el Morph que contiene la pregunta"
    tableroPregunta := Morph new.
    tableroPregunta color: Color white.
    tableroPregunta extent: 250@100. "Tamaño del contenedor"
    tableroPregunta borderWidth: 2; borderColor: Color black.
    tableroPregunta position: (self center - (tableroPregunta extent // 2)).
    
    "Crear el Morph de texto para la pregunta"
    preguntaMorph := StringMorph new.
    preguntaMorph contents: pregunta.
    preguntaMorph color: Color black.
    preguntaMorph position: (tableroPregunta width // 2 - preguntaMorph width // 2) @ 10.
    tableroPregunta addMorph: preguntaMorph.

    "Crear botones para las opciones"
    offset := 50. "Distancia inicial desde la parte superior"
    botonMorphs := opciones collect: [ :opcion |
        | boton |
        boton := SimpleButtonMorph new.
        boton label: opcion.
        boton target: self; actionSelector: #respuestaSeleccionada:; arguments: {opcion}.
        boton color: Color lightGray.
        boton borderWidth: 1; borderColor: Color black.
        boton extent: 50@30. "Tamaño de cada botón"
        boton position: ((tableroPregunta width // 2) - (boton width // 2)) @ offset.
        offset := offset + 40. "Moverse hacia abajo para la siguiente opción"
        boton.
    ].

    "Agregar los botones al contenedor de la pregunta"
    botonMorphs do: [ :boton | tableroPregunta addMorph: boton ].

    "Agregar el contenedor de la pregunta al tablero principal"
    self addMorph: tableroPregunta.
]

{ #category : #accessing }
TableroDuelo >> pregunta [

	^ pregunta
]

{ #category : #accessing }
TableroDuelo >> pregunta: anObject [

	pregunta := anObject
]

{ #category : #accessing }
TableroDuelo >> puntaje1 [

	^ puntaje1
]

{ #category : #accessing }
TableroDuelo >> puntaje1: puntaje [

	puntaje1 := puntaje
]

{ #category : #accessing }
TableroDuelo >> puntaje2 [

	^ puntaje2
]

{ #category : #accessing }
TableroDuelo >> puntaje2: puntaje [

	puntaje2 := puntaje
]

{ #category : #accessing }
TableroDuelo >> respuesta [

	^ respuesta
]

{ #category : #accessing }
TableroDuelo >> respuesta: anObject [

	respuesta := anObject
]

{ #category : #'as yet unclassified' }
TableroDuelo >> tamaño: tamanio colorp1: colorP1 colorp2: colorP2 [
|ancho alto p1 p2 jActual|

ancho:= 32 * tamanio. "el largo/alto del tablero"
alto := 48. "La altura de la barra de los puntajes"

self extent: (ancho + 1@alto).
self position: (0@(self height negated)).

p1 := Morph new.
p1 color: colorP1.
p1 extent: (ancho/3@alto).
p1 position: (0@(self height negated)).
jugador1  position: (p1 center)-(jugador1 width/2 @(p1 height/3)).
puntaje1  position: (p1 center)-(puntaje1 width/2 @(p1 height/3 - puntaje1 height/2)).
p1 addMorph: puntaje1.
p1 addMorph: jugador1 .
self addMorph: p1.


p2 := Morph new.
p2 color: colorP2.
p2 extent: (ancho/3@alto).
p2 position: (self width-p2 width@(self height negated)).
jugador2  position: (p2 center)-(jugador2 width/2 @(p2 height/3)).
puntaje2 position: (p2 center)-(puntaje2 width/2 @(p2 height/3 - puntaje2 height/2)).
p2 addMorph: puntaje2.
p2 addMorph: jugador2 .
self addMorph: p2.

jActual := Morph new.
jActual color: Color white.
jActual extent: (ancho/3 + 1@alto).
jActual position: (self width - jActual width/2@(self height negated)).
textomedio   position: (jActual center)-(textomedio width/2 @(jActual height/3)).
textoJugAct position: (jActual center)-(textoJugAct width/2 @(jActual height/3 - textoJugAct height/2)).
jActual addMorph: textoJugAct.
jActual addMorph: textomedio.
^self addMorph: jActual.

]

{ #category : #accessing }
TableroDuelo >> textoJugAct [

	^ textoJugAct
]

{ #category : #accessing }
TableroDuelo >> textoJugAct: texto [

	textoJugAct := texto asString
]

{ #category : #accessing }
TableroDuelo >> textomedio [

	^ textomedio
]

{ #category : #accessing }
TableroDuelo >> textomedio: texto [

	textomedio := texto
]

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
TableroDuelo >> iniciarTabDuelo [

| anchura altura|
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

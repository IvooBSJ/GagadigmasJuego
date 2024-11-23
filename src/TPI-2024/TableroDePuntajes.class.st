Class {
	#name : #TableroDePuntajes,
	#superclass : #BorderedMorph,
	#instVars : [
		'textodepuntaje1',
		'textodepuntaje2',
		'textodejugador1',
		'textodejugador2',
		'textodejugadoractual'
	],
	#classVars : [
		'tituloenelmedio'
	],
	#category : #'TPI-2024'
}

{ #category : #initialization }
TableroDePuntajes >> colorp1: colorP1 andColorP2: colorP2 [
|ancho alto p1 p2 jActual|

ancho:= 320. "el largo/alto del tablero"
alto := 48. "La altura de la barra de los puntajes"

self extent: (ancho + 1@alto).
self position: (0@(self height negated)).

p1 := Morph new.
p1 color: colorP1.
p1 extent: (ancho/3@alto).
p1 position: (0@(self height negated)).
textodejugador1  position: (p1 center)-(textodejugador1  width/2 @(p1 height/3)).
textodepuntaje1  position: (p1 center)-(textodepuntaje1   width/2 @(p1 height/3 - textodepuntaje1  height/2)).
p1 addMorph: textodepuntaje1.
p1 addMorph: textodejugador1 .
self addMorph: p1.


p2 := Morph new.
p2 color: colorP2.
p2 extent: (ancho/3@alto).
p2 position: (self width-p2 width@(self height negated)).
textodejugador2  position: (p2 center)-(textodejugador2 width/2 @(p2 height/3)).
textodepuntaje2 position: (p2 center)-(textodepuntaje2 width/2 @(p2 height/3 - textodepuntaje2  height/2)).
p2 addMorph: textodepuntaje2.
p2 addMorph: textodejugador2 .
self addMorph: p2.

jActual := Morph new.
jActual color: Color white.
jActual extent: (ancho/3 + 1@alto).
jActual position: (self width - jActual width/2@(self height negated)).
tituloenelmedio   position: (jActual center)-(tituloenelmedio  width/2 @(jActual height/3)).
textodejugadoractual   position: (jActual center)-(textodejugadoractual width/2 @(jActual height/3 - textodejugadoractual height/2)).
jActual addMorph: textodejugadoractual.
jActual addMorph: tituloenelmedio .

^self addMorph: jActual.

]

{ #category : #initialization }
TableroDePuntajes >> initialize [
super initialize .

textodejugador1 := StringMorph new.
textodejugador1 contents:'Jugador 1'.
textodejugador1 color: Color black.

textodepuntaje1  := StringMorph new.
textodepuntaje1 contents:'0'.
textodepuntaje1 color: Color black.

textodejugador2 := StringMorph new.
textodejugador2 contents:'Jugador 2'.
textodejugador2 color: Color black.

textodepuntaje2 := StringMorph new.
textodepuntaje2 contents:'0'.
textodepuntaje2 color: Color black.

tituloenelmedio  := StringMorph new.
tituloenelmedio  contents:'J. Actual:'.
tituloenelmedio  color: Color black.

textodejugadoractual  := StringMorph new.
textodejugadoractual  contents:'Jugador x'.
textodejugadoractual  color: Color black.
]

{ #category : #accessing }
TableroDePuntajes >> puntaje1 [
	^textodepuntaje1 contents asInteger.
]

{ #category : #accessing }
TableroDePuntajes >> puntaje2 [
	^textodepuntaje2 contents asNumber.
]

{ #category : #accessing }
TableroDePuntajes >> textodejugador1:texto [
^textodejugador1 contents: texto asString.
]

{ #category : #accessing }
TableroDePuntajes >> textodejugador2:texto [
^textodejugador2 contents:texto asString.
]

{ #category : #accessing }
TableroDePuntajes >> textodejugadoractual:texto [.
^textodejugadoractual contents:texto asString.
]

{ #category : #accessing }
TableroDePuntajes >> textodepuntaje1:texto [
^textodepuntaje1 contents:texto asString.
]

{ #category : #accessing }
TableroDePuntajes >> textodepuntaje2:texto [
^textodepuntaje2 contents:texto asString.
]

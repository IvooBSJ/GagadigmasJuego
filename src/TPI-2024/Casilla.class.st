Class {
	#name : #Casilla,
	#superclass : #BorderedMorph,
	#instVars : [
		'id',
		'tematica',
		'coulor',
		'i',
		'j',
		'estado'
	],
	#category : #'TPI-2024'
}

{ #category : #accessing }
Casilla >> coulor [

	^ coulor
]

{ #category : #accessing }
Casilla >> coulor: anObject [

	coulor := anObject
]

{ #category : #accessing }
Casilla >> estado [

	^ estado
]

{ #category : #accessing }
Casilla >> estado: bool [

	estado := bool
]

{ #category : #accessing }
Casilla >> i [

	^ i
]

{ #category : #accessing }
Casilla >> i: anObject [

	i := anObject
]

{ #category : #accessing }
Casilla >> id [

	^ id
]

{ #category : #accessing }
Casilla >> id: anObject [

	id := anObject
]

{ #category : #initialization }
Casilla >> initialize [
    super initialize.
    self bounds: (0@0 extent: 50@50).  "Tamaño de 100x100 píxeles"
    self borderWidth: 2.                "Ancho del borde"
    self borderColor: Color black.      "Color del borde"
    self color: Color lightGray.        "Color de fondo"
   
]

{ #category : #accessing }
Casilla >> j [

	^ j
]

{ #category : #accessing }
Casilla >> j: anObject [

	j := anObject
]

{ #category : #'as yet unclassified' }
Casilla >> ocupar: color [
	"metodo para ocupar la casilla"
	(estado) ifFalse:[ estado:= true. self color: color].
]

{ #category : #accessing }
Casilla >> tematica [

	^ tematica
]

{ #category : #accessing }
Casilla >> tematica: anObject [

	tematica := anObject
]

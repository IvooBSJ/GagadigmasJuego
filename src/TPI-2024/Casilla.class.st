Class {
	#name : #Casilla,
	#superclass : #Object,
	#instVars : [
		'i',
		'j',
		'nombreDueño',
		'estado'
	],
	#category : #'TPI-2024'
}

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
Casilla >> j [

	^ j
]

{ #category : #accessing }
Casilla >> j: anObject [

	j := anObject
]

{ #category : #accessing }
Casilla >> nombreDueño [

	^ nombreDueño
]

{ #category : #accessing }
Casilla >> nombreDueño: anObject [

	nombreDueño := anObject
]

{ #category : #'as yet unclassified' }
Casilla >> ocupar: color [
	"metodo para ocupar la casilla"
	(estado) ifFalse:[ estado:= true. self color: color].
]

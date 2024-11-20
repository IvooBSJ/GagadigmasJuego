Class {
	#name : #Preguntero,
	#superclass : #Object,
	#instVars : [
		'preguntas',
		'tematicas'
	],
	#category : #'TPI-2024'
}

{ #category : #initialization }
Preguntero >> initialize [ 

	super initialize.
	preguntas:= OrderedCollection new. "La idea es que de acuerdo al numero en el arreglo redirija a una tematica y que dentro de esa tematica haya otro arreglo con las preguntas de tematica."
]

{ #category : #accessing }
Preguntero >> preguntas [

	^ preguntas
]

{ #category : #accessing }
Preguntero >> preguntas: anObject [

	preguntas := anObject
]

{ #category : #accessing }
Preguntero >> tematicas [

	^ tematicas
]

{ #category : #accessing }
Preguntero >> tematicas: anObject [

	tematicas := anObject
]

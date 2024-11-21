Class {
	#name : #Jugador,
	#superclass : #Object,
	#instVars : [
		'id',
		'color',
		'tematica',
		'celdas'
	],
	#category : #'TPI-2024'
}

{ #category : #printing }
Jugador class >> coloresDisponibles [ [
        ^ #('Azul' 'Amarillo' 'Rojo' 'Rosa' 'Naranja' 'Verde' 'Violeta' 'Morado')
    ]
]

{ #category : #'instance creation' }
Jugador class >> newNombre: unNombre color: unColor [ [
        ^ self new
            nombre: unNombre;
            color: unColor;
            yourself
    ]
]

{ #category : #accessing }
Jugador >> casillas [
	^ celdas
]

{ #category : #accessing }
Jugador >> casillas: anObject [

(self casillas = nil) ifTrue:[celdas := OrderedCollection new].

	anObject do:[ :i |
		celdas add: i.
		].
	^celdas.
	
	
		
	 
	
]

{ #category : #accessing }
Jugador >> color [

	^ color
]

{ #category : #accessing }
Jugador >> color: anObject [

	color := anObject
]

{ #category : #accessing }
Jugador >> id [

	^ id
]

{ #category : #accessing }
Jugador >> id: anObject [

	id := anObject
]

{ #category : #initialization }
Jugador >> initialize [ 
	self id: nil.
	self color: nil.
	self casillas: OrderedCollection new.
	self tematica: nil.
]

{ #category : #accessing }
Jugador >> nombre [ [
        ^ nombre
    ]
]

{ #category : #initialize }
Jugador >> nombre: unNombre [ 
        nombre := unNombre
    
]

{ #category : #accessing }
Jugador >> numero [

	^ numero
]

{ #category : #accessing }
Jugador >> numero: anObject [

	numero := anObject
]

{ #category : #accessing }
Jugador >> tematica [

	^ tematica
]

{ #category : #accessing }
Jugador >> tematica: anObject [

	tematica := anObject
]

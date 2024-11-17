Class {
	#name : #Jugador,
	#superclass : #Object,
	#instVars : [
		'numero',
		'droga'
	],
	#category : #Juego
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
Jugador >> color [ [
        ^ color
    ]
]

{ #category : #initialize }
Jugador >> color: unColor [ [
        (Jugador coloresDisponibles includes: unColor)
            ifTrue: [color := unColor]
            ifFalse: [self error: 'Color no válido. Los colores disponibles son: ', (Jugador coloresDisponibles joinSeparatedBy: ', ')]
    ]
]

{ #category : #accessing }
Jugador >> nombre [ [
        ^ nombre
    ]
]

{ #category : #initialize }
Jugador >> nombre: unNombre [ [
        nombre := unNombre
    ]
]

{ #category : #accessing }
Jugador >> numero [

	^ numero
]

{ #category : #accessing }
Jugador >> numero: anObject [

	numero := anObject
]

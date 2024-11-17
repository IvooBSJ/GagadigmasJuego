Class {
	#name : #'Control_Juego',
	#superclass : #Object,
	#instVars : [
		'jugadores',
		'lol'
	],
	#category : #'TPI-2024'
}

{ #category : #initalize }
Control_Juego >> agregarJugador: unJugador [ [
        (jugadores size < 8)
            ifTrue: [jugadores add: unJugador]
            ifFalse: [self error: 'No se pueden agregar más de 8 jugadores.']
    ]

]

{ #category : #initialize }
Control_Juego >> initialize [ [
        jugadores := OrderedCollection new.
    ]

]

{ #category : #accessing }
Control_Juego >> jugadores [ [
        ^ jugadores
    ]

]

{ #category : #initialize }
Control_Juego >> reiniciarJugadores [ [
        jugadores := OrderedCollection new.
    ]
]

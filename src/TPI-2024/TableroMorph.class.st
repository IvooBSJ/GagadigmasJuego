Class {
	#name : #TableroMorph,
	#superclass : #Morph,
	#instVars : [
		'filas',
		'columnas',
		'casillas',
		'columna'
	],
	#category : #'TPI-2024'
}

{ #category : #initalize }
TableroMorph >> crearCasillas [
    | index |
    index := 1.
    1 to: filas do: [:i |
        1 to: columnas do: [:j |
            color := (i + j) odd ifTrue: [Color white] ifFalse: [Color lightGray].
            casillas at: index put: (NewHandleMorph new
                color: color;
                extent: 50@50;
                borderWidth: 1;
                borderColor: Color black).
            (casillas at: index) on: MouseClickState do: [:evt | self manejarClick: i j].
            self addMorph: (casillas at: index).
            index := index + 1.
        ].
    ].

]

{ #category : #initialize }
TableroMorph >> inicializarTablero [
    super initialize.
    filas := 8.
    columnas := 8.
    casillas := Array new: filas * columnas.
    self crearCasillas.
    self layoutPolicy: TableLayout new.
    self extent: 400@400.
]

{ #category : #'as yet unclassified' }
TableroMorph >> iniciarJuego [
	"Aca iniciamos el juego"


]

{ #category : #printing }
TableroMorph >> manejarClick: fila [ columna
    Transcript show: 'Casilla en posición (', fila printString, ', ', columna printString, ') clickeada'; cr.

]

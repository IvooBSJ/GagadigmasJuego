Class {
	#name : #Tablero,
	#superclass : #BorderedMorph,
	#instVars : [
		'casillas',
		'jugadores',
		'tamaño',
		'jugActual'
	],
	#category : #'TPI-2024'
}

{ #category : #initialization }
Tablero >> crearTablero: n [
	"Este método crea el fondo del tablero y utlizia newCellAt para colocar las celdas en el mismo"
	|simpleCell ancho largo id aux|
	
	simpleCell := Casilla new.
	
	ancho := simpleCell width.
	largo := simpleCell height.
	
	self bounds:(100@100 extent:((ancho * n)@(largo * n)) + (2 * self borderWidth)).
	
	casillas := Array2D new: n.
	id := 1.
	
	1 to: n do:[:i |
		1 to: n do:[ :j | 
			casillas at:i at: j put: (self newCellAt:i at:j).
			(casillas at:i at: j) id: id.
			aux := nil.
			aux := OrderedCollection new.
			aux add: (i*10 + j).
			(jugadores at: id) casillas: aux.
			id := id + 1.
			]
		].
	
^self

]

{ #category : #initialization }
Tablero >> initialize [
	super initialize.
	self tamaño: 8.
	self initializeJugadores.
	self crearTablero: self tamaño. 
	self jugActual: (1 to: jugadores size) atRandom.
	
	
	
]

{ #category : #initialization }
Tablero >> initializeJugadores [
	"Este método inicializa los jugadores"
	| j |
	jugadores := Array new: tamaño * tamaño.
	
	"Se debe agregar metodos para asignar automaticamente colores y tematicas diferentes "
	1 to: jugadores size do: [ :i|
		j := Jugador new. 
		j id: i.
		j tematica: ' '.
		j color: Color red.
		jugadores at: i put: j].
	
^jugadores
]

{ #category : #accessing }
Tablero >> jugActual [
	^jugActual 
]

{ #category : #accessing }
Tablero >> jugActual: x [
	|j cas|
	"Resaltar los bordes de las casillas del jugador actual"
	"En j se encuentra la instancia del jugador actual"
	j := (jugadores at: x).
	cas := j casillas.
	cas do: [ :i | 
		(casillas at: (i // 10) at: i \\ 10) prenderBordes.
		 ].
	^jugActual := x
]

{ #category : #accessing }
Tablero >> jugadores [
	^jugadores
]

{ #category : #accessing }
Tablero >> newCellAt:i at:j [
	"Este método se encarga de crear las casillas e ir colocandolas en el tablero en su respectiva posicion"
	| c orign|
	orign := self innerBounds origin.
	c := Casilla new.
	c position: ((j-1)*c width)@((i-1)*c height) + orign.
	
	c mouseAction:[self posicionAt: i at:j  ].

	self addMorph: c.	
	^c.
]

{ #category : #accessing }
Tablero >> posicionAt: i at: j [
	^Transcript show: 'Tocaste la:',i asString,' ',j asString
]

{ #category : #accessing }
Tablero >> tamaño [
	^tamaño
]

{ #category : #accessing }
Tablero >> tamaño: x [
	"Asigna el tamaño del tablero nxn"
	^tamaño := x
]

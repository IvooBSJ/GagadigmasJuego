Class {
	#name : #Tablero,
	#superclass : #BorderedMorph,
	#instVars : [
		'casillas',
		'jugadores',
		'jugActual',
		'tamaño'
	],
	#category : #'TPI-2024'
}

{ #category : #Duelos }
Tablero >> adyacentes: lista [ 
	"método que recibe las casillas de un jugador y retorna la lista de casillas adyacentes"
	|adya u d|
	adya := OrderedCollection new.
	
	lista do:[ :i | 
	d := i//10.
	u := i\\10.
	
	(u+1 <= 8) ifTrue:[
		adya add:(d*10 + u + 1)].
	(u-1 >= 1) ifTrue:[
		adya add:(d*10 + u - 1)].
	(d+1 <= 8) ifTrue:[
		adya add:(d*10 + u + 10)].
	(d-1 >= 1) ifTrue:[
		adya add:(d*10 + u - 10)].
	].
^adya.
]

{ #category : #Duelos }
Tablero >> colorearCasillas: lista color: col [
	"Utilizado para colorear las categorias del ganador"
	lista do:[ :i| 
		(casillas at: (i // 10)  at: (i \\ 10)) color: col.	
		].
	
]

{ #category : #initialization }
Tablero >> crearTablero: n [
	"Este método crea el fondo del tablero y utlizia newCellAt para colocar las celdas en el mismo"
	|simpleCell ancho largo cod aux|
	
	simpleCell := Casilla new.
	
	ancho := simpleCell width.
	largo := simpleCell height.
	
	self bounds:(100@100 extent:((ancho * n)@(largo * n)) + (2 * self borderWidth)).
	
	casillas := Array2D new: n.
	cod := 1.
	
	1 to: n do:[:i |
		1 to: n do:[ :j | 
			casillas at:i at: j put: (self newCellAt:i at:j).
			(casillas at:i at: j) id: cod.
			(casillas at:i at: j) color: (jugadores at:cod) color.
			aux := nil.
			aux := OrderedCollection new.
			aux add: (i*10 + j).
			(jugadores at: cod) casillas: aux.
			cod := cod + 1.
			]].
	
^self

]

{ #category : #Duelos }
Tablero >> duelo: x [ "Recibe el ID del retador"

"falta que verifique que no tocó una casilla que le pertenece al jugActual"

(self vecino: (self adyacentes: (jugadores at:x)casillas))
	ifTrue:[
		"Inicializa el tablero de Duelo entre jugador actual y jugActual"
		UIManager default inform: 'Duelo válido'.
		
		self ganador: jugActual per: x. 
		]
	ifFalse:[
		UIManager default inform: 'Elegí bien pelotudo'.
		].
]

{ #category : #accessing }
Tablero >> encenderBordes: x [ "ID del jugador"
	|j cas|
	"Resaltar los bordes de las casillas del jugador actual"
	"En j se encuentra la instancia del jugador actual"
	j := (jugadores at: x).
	cas := j casillas.
	cas do: [ :i | 
		(casillas at: (i // 10) at: i \\ 10) prenderBordes.
		 ].
]

{ #category : #Duelos }
Tablero >> ganador: g per: p [
	(jugadores at: g) casillas: (jugadores at:p) casillas.
	self encenderBordes: g.
	self colorearCasillas: ((jugadores at:p) casillas) color: (jugadores at: g) color. 
	(UIManager default confirm: '¿Te la seguís bancando?') ifTrue:[ self jugActual: g. ]ifFalse:[
		"Apagar casillas del jugActual"
		"Asigna un nuevo jugActual"
		"Al randomizar jugActual verificar que no toque una casilla del jugActual que se va a reemplazar"
		"Encender los bordes del nuevo jugActual"
		
		].
	
	
	
]

{ #category : #accessing }
Tablero >> generarColores [
    "Genera una lista de 64 colores únicos usando combinaciones de tonos base y variaciones más profundas de brillo."
    | colores tonos resultado |
    colores := { Color red. Color blue. Color green. Color yellow. Color orange. Color magenta. Color cyan. Color brown }.
    tonos := OrderedCollection new.
    
    colores do: [:unColor | 
        tonos add: unColor.
        tonos add: unColor darker.
        tonos add: (unColor darker) darker.
        tonos add: (unColor darker) darker darker.
        tonos add: (unColor darker) darker darker darker.
        tonos add: unColor lighter.
        tonos add: (unColor lighter) lighter.
        tonos add: (unColor lighter) lighter lighter.
        tonos add: (unColor lighter) lighter lighter lighter ].

    "Barajar tonos y limitar a 64"
    resultado := tonos asArray copy.
    resultado := resultado sort: [ :a :b | (1 to: 1000) atRandom < (1 to: 1000) atRandom ].
    ^ resultado first: 64
]

{ #category : #initialization }
Tablero >> initialize [
	super initialize.
	self tamaño: 8.
	self initializeJugadores.
	self crearTablero: self tamaño. 
	self initializeAction.
	self jugActual: (1 to: jugadores size) atRandom.
	self encenderBordes: jugActual.
	
	
	
]

{ #category : #initialization }
Tablero >> initializeAction [

	1 to: tamaño do: [ :i |
		1 to: tamaño do: [ :j | (casillas at: i at: j) mouseAction:   [ 
				self duelo:(casillas at: i at: j)id ] 
			].]
]

{ #category : #initialization }
Tablero >> initializeJugadores [
    "Inicializa los jugadores y les asigna colores únicos de forma aleatoria."
    | paletaColores j |
    "Genera la paleta de colores únicos"
    paletaColores := self generarColores.

    "Inicializa el arreglo de jugadores"
    jugadores := Array new: tamaño * tamaño.

    "Asigna un color único a cada jugador"
    1 to: jugadores size do: [ :i |
        j := Jugador new.
        j id: i.
        j tematica: ' '. "Puedes ajustar esto más adelante si tienes temáticas predefinidas"
        j color: (paletaColores at: i).
        jugadores at: i put: j ].

    ^ jugadores
]

{ #category : #accessing }
Tablero >> jugActual [ "Retorna la ID del jugador actual"
	^jugActual 
]

{ #category : #accessing }
Tablero >> jugActual: x [ "ID del jugador actual"
	
	^jugActual := x
]

{ #category : #accessing }
Tablero >> jugadores [
	^jugadores
]

{ #category : #initialization }
Tablero >> newCellAt:i at:j [
	"Este método se encarga de crear las casillas e ir colocandolas en el tablero en su respectiva posicion"
	| c orign|
	orign := self innerBounds origin.
	c := Casilla new.
	c position: ((j-1)*c width)@((i-1)*c height) + orign.
	
	self addMorph: c.	
	^c.
]

{ #category : #accessing }
Tablero >> posicionAt: i at: j [
	^(i*10 + j).
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

{ #category : #Duelos }
Tablero >> vecino: x [
(x anySatisfy: [:elemento | ((jugadores at: jugActual) casillas) includes: elemento])
    ifTrue: [^true]
    ifFalse: [^false].
]

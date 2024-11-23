Class {
	#name : #Casilla,
	#superclass : #SimpleButtonMorph,
	#instVars : [
		'id',
		'procesoBordes',
		'mouseAction'
	],
	#category : #'TPI-2024'
}

{ #category : #accessing }
Casilla >> apagarBordes [
    procesoBordes ifNotNil: [procesoBordes terminate].  "Detiene el proceso si existe"
    procesoBordes := nil.  "Limpia la referencia"

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
	 self label: ''.
    self bounds: (0@0 extent: 50@50).  "Tamaño de 100x100 píxeles"
    self borderWidth: 2.                "Ancho del borde"
    self borderColor: Color black.      "Color del borde"
    self color: Color lightGray.        "Color de fondo"
	 self id: nil.
	 
   
]

{ #category : #accessing }
Casilla >> mouseAction: aBlock [
	"Método utilizado para guardar el bloque de código que se ejecutará al pulsar click"
	^mouseAction := aBlock
]

{ #category : #accessing }
Casilla >> mouseDown: anEvent [
    "Ignora el cambio de color al presionar, pero ejecuta la acción del mouse."
    mouseAction ifNotNil: [mouseAction value].
]

{ #category : #accessing }
Casilla >> mouseUp: anEvent [
	"Método de Pharo usado para asignar un evento a un click"
	"mouseAction value"
]

{ #category : #accessing }
Casilla >> pintarVerde [
	^self color: Color green.
]

{ #category : #accessing }
Casilla >> prenderBordes [
    self apagarBordes.   "Detiene cualquier proceso previo para evitar duplicados."
    procesoBordes := [
        [self resaltarBordes. (Delay forMilliseconds: 300) wait] repeat. "Cambia el color y espera 500ms en un bucle."
    ] fork.  
]

{ #category : #accessing }
Casilla >> resaltarBordes [
	 | colores index actualColor |
	"Define los 7 colores del arcoíris correctamente"
	colores := {Color red. (Color r: 1 g: 0.5 b: 0). Color yellow. Color green. Color blue. (Color r: 0.29 g: 0 b: 0.51). (Color r: 0.5 g: 0 b: 0.5)}.
	
	"Encuentra el índice del color actual o empieza desde el primer color"
	actualColor := colores indexOf: self borderColor ifAbsent: 0.
    index := (actualColor + 1) \\ colores size + 1.  "Calcula el siguiente color"

	"Actualiza el color del borde"
    self borderColor: (colores at: index).
    self changed.  "Actualiza visualmente el Morph"
]

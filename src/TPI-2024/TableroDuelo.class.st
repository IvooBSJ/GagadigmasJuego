Class {
	#name : #TableroDuelo,
	#superclass : #BorderedMorph,
	#instVars : [
		'pregunta',
		'opciones',
		'botones'
	],
	#category : #'TPI-2024'
}

{ #category : #accessing }
TableroDuelo >> crearTableroPreguntas [
    | botonMorphs offset anchoTablero con|
    
    pregunta := StringMorph new.
    pregunta contents: '¿Pregunta?'.
    pregunta color: Color white. "Texto en blanco"
	 pregunta position: ((self width/2) - (pregunta width/2))@30.
    pregunta font: (TextStyle default fontOfSize: 18). "Fuente más grande e impactante"

    anchoTablero := 320. "Ancho del tablero contenedor"
    offset := 120. "Distancia inicial desde la parte superior"
	
    con := 1.

    botonMorphs := #('Op1' 'Op2' 'Op3' 'Op4') collect: [ :opcion |
        | boton |
        boton := SimpleButtonMorph new.
        boton label: opcion.
        boton color: Color veryLightGray. "Fondo gris claro"
        boton borderWidth: 1; borderColor: Color black. "Borde negro"
        boton cornerStyle: #rounded. "Estilo redondeado"
        boton extent: 200@30. "Tamaño del botón"
        boton useRoundedCorners. "Hacer bordes redondeados"
        
        "Centrar el botón horizontalmente en el tablero"
        boton position: ((anchoTablero // 2) - (boton width // 2)) @ offset.
        offset := offset + 50. "Incrementar para colocar los botones uno debajo del otro"
		  botones at: con put: boton.
		  con := con + 1.
		  boton.
    ].
	
	self addAllMorphs: botonMorphs.
	self addMorph: pregunta.
	^self
]

{ #category : #accessing }
TableroDuelo >> initialize [
super initialize .
self extent: 320@350.
self color: Color gray.
 
botones := Array new: 4.
self crearTableroPreguntas.
self extent: 320@350.
]

{ #category : #accessing }
TableroDuelo >> opciones: lista [ "Recibe una lista y carga las opciones en los botones"
]

{ #category : #accessing }
TableroDuelo >> pregunta: string [ 
	pregunta := string.
	pregunta position: (self width + pregunta width / 2).
]

Class {
	#name : #Temporizador,
	#superclass : #Duelo,
	#instVars : [
		'activo',
		'restante',
		'tiempo',
		'bloque',
		'label'
	],
	#category : #'TPI-2024'
}

{ #category : #'as yet unclassified' }
Temporizador >> detener [

	activo := false.
]

{ #category : #'as yet unclassified' }
Temporizador >> iniciar [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"

	activo ifTrue: [^self]. "Evita que se inicie si ya está corriendo"
    activo := true.
    [ 
        [tiempo > 0 and: [activo]] whileTrue: [
            (Delay forSeconds: 1) wait.
            tiempo := tiempo - 1.
            bloque ifNotNil: [bloque value: tiempo]. "Actualiza la UI"
        ].
        activo := false.
        bloque ifNotNil: [bloque value: 0]. "Cuando termina, actualiza a 0"
    ] fork.
]

{ #category : #'as yet unclassified' }
Temporizador >> iniciarGraficoT: unBloque [ 
	bloque:= unBloque.
	bloque value: tiempo. "Inicializa el componente gráfico"
]

{ #category : #'as yet unclassified' }
Temporizador >> iniciarTimer [
	"Iniciar Timer hay que llamarlo cuando arranca un duelo"
	
| ventana timer botonIniciar botonDetener botonReiniciar |
ventana := Morph new extent: 200@150.
ventana openInWorld.

label := StringMorph new.
label contents: '60'; position: 80@50; openInWorld.
ventana addMorph: label.

timer := Temporizador new.
timer iniciarGraficoT: [ :tiempoActual | label contents: tiempoActual asString ].

botonIniciar := SimpleButtonMorph new.
botonIniciar label: 'Iniciar'; target: timer; actionSelector: #iniciar; position: 20@100.
ventana addMorph: botonIniciar.
]

{ #category : #initialization }
Temporizador >> initialize [
	"Inicializador del temporizador"

	tiempo:= 60.
	activo:= false.
	bloque := nil. "Bloque para actualizar la interfaz gráfica"
   label := nil. "Referencia a un componente gráfico opcional"
]

{ #category : #'as yet unclassified' }
Temporizador >> reiniciar [
	"Reinicio el temporizador"
	
	self detener.
	tiempo:= 60.
	bloque ifNotNil: [bloque value: tiempo]. "Actualiza la UI"
]

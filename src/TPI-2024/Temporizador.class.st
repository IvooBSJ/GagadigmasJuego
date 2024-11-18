Class {
	#name : #Temporizador,
	#superclass : #Duelo,
	#instVars : [
		'activo',
		'restante',
		'tiempo'
	],
	#category : #'TPI-2024'
}

{ #category : #'as yet unclassified' }
Temporizador >> iniciar [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"

	activo ifTrue: [^self]. "Evita iniciar el temporizador si ya está corriendo"
    activo := true.
    [tiempo > 0] whileTrue: [
        (Delay forSeconds: 1) wait.
        tiempo := tiempo - 1.
        Transcript show: 'Tiempo restante: ', tiempo asString; cr.
    ].
    activo := false.
    Transcript show: 'El tiempo se termino !'; cr.

]

{ #category : #initialization }
Temporizador >> initialize [
	"Inicializador del temporizador"

	tiempo:= 60.
	activo:= false.
]

{ #category : #'as yet unclassified' }
Temporizador >> reiniciar [
	"Reinicio el temporizador"
	
	tiempo:= 60.
]

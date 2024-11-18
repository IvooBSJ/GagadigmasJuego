Class {
	#name : #Duelo,
	#superclass : #Object,
	#instVars : [
		'numDuelo',
		'casillai',
		'casillaj',
		'rival'
	],
	#category : #'TPI-2024'
}

{ #category : #accessing }
Duelo >> casillai [

	^ casillai 
]

{ #category : #accessing }
Duelo >> casillai: i [

	casillai := i
]

{ #category : #accessing }
Duelo >> casillaj [

	^ casillaj
]

{ #category : #accessing }
Duelo >> casillaj: j [

	casillaj := j
]

{ #category : #accessing }
Duelo >> numDuelo [

	^ numDuelo
]

{ #category : #accessing }
Duelo >> numDuelo: anObject [

	numDuelo := anObject
]

{ #category : #accessing }
Duelo >> rival [

	^ rival
]

{ #category : #accessing }
Duelo >> rival: anObject [

	rival := anObject
]

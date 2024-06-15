Class {
	#name : 'CarManualBuilder',
	#superclass : 'Object',
	#traits : 'TCarBuilder',
	#classTraits : 'TCarBuilder classTrait',
	#instVars : [
		'manual'
	],
	#category : 'Q170-Builder',
	#package : 'Q170-Builder'
}

{ #category : 'initialization' }
CarManualBuilder >> initialize [

	super initialize.
	manual := MyCarManual new.
	^ self
]

{ #category : 'as yet unclassified' }
CarManualBuilder >> manual [

	^ manual
]

{ #category : 'initialization' }
CarManualBuilder >> setEngine [

	manual engine: 'Engine manual'
]

{ #category : 'initialization' }
CarManualBuilder >> setSeats [

	manual seats: 'Seats manual'
]

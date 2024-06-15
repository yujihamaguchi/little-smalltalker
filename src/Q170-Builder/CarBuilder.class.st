Class {
	#name : 'CarBuilder',
	#superclass : 'Object',
	#traits : 'TCarBuilder',
	#classTraits : 'TCarBuilder classTrait',
	#instVars : [
		'car'
	],
	#category : 'Q170-Builder',
	#package : 'Q170-Builder'
}

{ #category : 'as yet unclassified' }
CarBuilder >> car [

	^ car
]

{ #category : 'initialization' }
CarBuilder >> initialize [

	super initialize.
	car := MyCar new.
	^ self
]

{ #category : 'initialization' }
CarBuilder >> setEngine [

	car engine: 'Engine'
]

{ #category : 'initialization' }
CarBuilder >> setSeats [

	car seats: 'Seats'
]

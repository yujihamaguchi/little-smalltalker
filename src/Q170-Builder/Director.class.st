Class {
	#name : 'Director',
	#superclass : 'Object',
	#category : 'Q170-Builder',
	#package : 'Q170-Builder'
}

{ #category : 'as yet unclassified' }
Director >> constructCar: aCarBuilder [

	aCarBuilder setSeats.
	aCarBuilder setEngine
]

{ #category : 'as yet unclassified' }
Director >> constructCarManual: aCarManualBuilder [

	aCarManualBuilder setSeats.
	aCarManualBuilder setEngine
]

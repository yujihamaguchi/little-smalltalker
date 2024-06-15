Class {
	#name : 'DirectorTest',
	#superclass : 'TestCase',
	#category : 'Q170-Builder-Tests',
	#package : 'Q170-Builder-Tests'
}

{ #category : 'tests' }
DirectorTest >> testConstructCar [

	| director builder |
	"Arrange"
	director := Director new.
	builder := Mock new.
	builder stub setSeats willReturnYourself.
	builder stub setEngine willReturnYourself.

	"Act"
	director constructCar: builder.

	"Assert"
	builder should receive setSeats.
	builder should receive setEngine
]

{ #category : 'tests' }
DirectorTest >> testConstructCarManual [

	| director builder |
	"Arrange"
	director := Director new.
	builder := Mock new.
	builder stub setSeats willReturnYourself.
	builder stub setEngine willReturnYourself.

	"Act"
	director constructCarManual: builder.

	"Assert"
	builder should receive setSeats.
	builder should receive setEngine
]

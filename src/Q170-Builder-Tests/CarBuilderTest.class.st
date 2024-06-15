Class {
	#name : 'CarBuilderTest',
	#superclass : 'TestCase',
	#category : 'Q170-Builder-Tests',
	#package : 'Q170-Builder-Tests'
}

{ #category : 'tests' }
CarBuilderTest >> testSetEngine [

	| builder car |
	"Arrange"
	builder := CarBuilder new.
	car := builder car.
	car stub.

	"Act"
	builder setEngine.

	"Assert"
	car should receive engine: 'Engine'
]

{ #category : 'tests' }
CarBuilderTest >> testSetSeats [

	| builder car |
	"Arrange"
	builder := CarBuilder new.
	car := builder car.
	car stub.

	"Act"
	builder setSeats.

	"Assert"
	car should receive seats: 'Seats'
]

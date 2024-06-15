Class {
	#name : 'CarManualBuilderTest',
	#superclass : 'TestCase',
	#category : 'Q170-Builder-Tests',
	#package : 'Q170-Builder-Tests'
}

{ #category : 'initialization' }
CarManualBuilderTest >> testSetEngine [

	| builder manual |
	"Arrange"
	builder := CarManualBuilder new.
	manual := builder manual.
	manual stub.

	"Act"
	builder setEngine.

	"Assert"
	manual should receive engine: 'Engine manual'
]

{ #category : 'initialization' }
CarManualBuilderTest >> testSetSeats [

	| builder manual |
	"Arrange"
	builder := CarManualBuilder new.
	manual := builder manual.
	manual stub.

	"Act"
	builder setSeats.

	"Assert"
	manual should receive seats: 'Seats manual'
]

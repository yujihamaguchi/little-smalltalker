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
	self assert: car engine equals: nil. 

	"Act"
	builder setEngine.

	"Assert"
	self assert: car engine equals: 'Engine'
]

{ #category : 'tests' }
CarBuilderTest >> testSetSeats [

	| builder car |
	"Arrange"
	builder := CarBuilder new.
	car := builder car.
	self assert: car seats equals: nil. 

	"Act"
	builder setSeats.

	"Assert"
	self assert: car seats equals: 'Seats'
]

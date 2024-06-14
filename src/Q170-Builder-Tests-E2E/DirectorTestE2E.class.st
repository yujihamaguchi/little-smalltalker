Class {
	#name : 'DirectorTestE2E',
	#superclass : 'TestCase',
	#category : 'Q170-Builder-Tests-E2E',
	#package : 'Q170-Builder-Tests-E2E'
}

{ #category : 'tests' }
DirectorTestE2E >> testConstructCar [

	| director builder car |
	"Arrange"
	director := Director new.
	builder := CarBuilder new.

	"Act"
	director constructCar: builder.

	"Assert"
	car := builder car.
	self assert: car seats equals: 'Seats'.
	self assert: car engine equals: 'Engine'
]

{ #category : 'tests' }
DirectorTestE2E >> testConstructCarManual [

	| director builder manual |
	"Arrange"
	director := Director new.
	builder := CarManualBuilder new.

	"Act"
	director constructCarManual: builder.

	"Assert"
	manual := builder manual.
	self assert: manual seats equals: 'Seats manual'.
	self assert: manual engine equals: 'Engine manual'
]

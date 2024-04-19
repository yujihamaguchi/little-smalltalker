Class {
	#name : #DriveTest,
	#superclass : #TestCase,
	#category : #'Q130-Facade-Tests-E2E'
}

{ #category : #tests }
DriveTest >> testDrive [

	| car driver |
	"Arrange"
	car := Car new.
	driver := Driver car: car.

	"Act"
	driver pushPedalUntil: 700.
	driver driveFor: 30.
	driver pushPedalUntil: 750.
	driver driveFor: 20.

	"Assert"
	self assert: car distance equals: 36000
]

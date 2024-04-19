Class {
	#name : #DriverTest,
	#superclass : #TestCase,
	#category : #'Q130-Facade-Tests'
}

{ #category : #tests }
DriverTest >> testDrive [

	| driver minutes car |
	"Arrange"
	car := Mock new.
	minutes := Mock new.
	(car stub runFor: minutes) willReturnYourself.
	driver := Driver car: car.

	"Act"
	driver driveFor: minutes.

	"Assert"
	car should receive runFor: minutes
]

{ #category : #tests }
DriverTest >> testPushPedalUntil [

	| car speed driver |
	"Arrange"
	car := Mock new.
	speed := Mock new.
	(car stub speed: speed) willReturnYourself.
	driver := Driver car: car.

	"Act"
	driver pushPedalUntil: speed.

	"Assert"
	car should receive speed: speed
]

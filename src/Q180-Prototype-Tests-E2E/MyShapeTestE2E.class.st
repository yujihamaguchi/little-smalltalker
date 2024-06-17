Class {
	#name : 'MyShapeTestE2E',
	#superclass : 'TestCase',
	#category : 'Q180-Prototype-Tests-E2E',
	#package : 'Q180-Prototype-Tests-E2E'
}

{ #category : 'tests' }
MyShapeTestE2E >> testClone [

	| shapes circle rectangle |
	"Arrange"
	shapes := OrderedCollection new.
	circle := MyCircle2 new.
	circle radius: 20 color: #yellow.
	rectangle := MyRectangle2 new.
	rectangle width: 10 height: 20.

	"Act"
	shapes add: circle myClone.
	shapes add: rectangle myClone.

	"Assert"
	self assert: (shapes at: 1) equals: circle.
	self assert: (shapes at: 2) equals: rectangle
]

{ #category : 'tests' }
MyShapeTestE2E >> testCloneCircle [

	| circle result |
	"Arrange"
	circle := MyCircle2 new.
	circle radius: 20 color: #yellow.

	"Act"
	result := circle myClone.

	"Assert"
	self assert: result equals: circle
]

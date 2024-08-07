Class {
	#name : 'MyShapeTestE2E',
	#superclass : 'TestCase',
	#category : 'Q180-Prototype-Tests-E2E',
	#package : 'Q180-Prototype-Tests-E2E'
}

{ #category : 'tests' }
MyShapeTestE2E >> testCloneCircle [

	| circle result |
	"Arrange"
	circle := MyCircle2 radius: 20.
	circle color: #yellow.

	"Act"
	result := circle myClone.

	"Assert"
	self assert: result equals: circle
]

{ #category : 'tests' }
MyShapeTestE2E >> testCloneRectangle [

	| rectangle result |
	"Arrange"
	rectangle := MyRectangle2 width: 10 height: 20.
	rectangle color: #blue.

	"Act"
	result := rectangle myClone.

	"Assert"
	self assert: result equals: rectangle
]

{ #category : 'tests' }
MyShapeTestE2E >> testCloneShapes [

	| shapes circle rectangle clones |
	"Arrange"
	circle := MyCircle2 radius: 20.
	circle color: #yellow.
	rectangle := MyRectangle2 width: 10 height: 20.
	rectangle color: #blue.
	shapes := OrderedCollection new.
	shapes add: circle myClone.
	shapes add: rectangle myClone.

	"Act"
	clones := shapes collect: [ :e | e myClone ].

	"Assert"
	self assert: (clones at: 1) equals: circle.
	self assert: (clones at: 2) equals: rectangle
]

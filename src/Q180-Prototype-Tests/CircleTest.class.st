Class {
	#name : 'CircleTest',
	#superclass : 'TestCase',
	#category : 'Q180-Prototype-Tests',
	#package : 'Q180-Prototype-Tests'
}

{ #category : 'tests' }
CircleTest >> testClone [

	| circle clonedCircle result |
	"Arrange"
	circle := MyCircle2 new.
	clonedCircle := Mock new.
	(MyCircle2 stub source: circle) willReturn: clonedCircle.

	"Act"
	result := circle myClone.

	"Assert"
	MyCircle2 should receive source: circle.
	self assert: result equals: clonedCircle 
]

{ #category : 'tests' }
CircleTest >> testSource [

	| result circle |
	"Arrange"
	circle := MyCircle2 new.
	circle stub.
	(MyShape stub source: circle) willReturnYourself.

	"Act"
	result := MyCircle2 source: circle.

	"Assert"
	MyShape should receive source: circle.
	circle should receive radius
]

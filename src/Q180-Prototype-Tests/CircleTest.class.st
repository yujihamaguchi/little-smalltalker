Class {
	#name : 'CircleTest',
	#superclass : 'TestCase',
	#category : 'Q180-Prototype-Tests',
	#package : 'Q180-Prototype-Tests'
}

{ #category : 'tests' }
CircleTest >> testClone [

	| circle clonedCircle |
	"Arrange"
	circle := MyCircle2 new.
	clonedCircle := Mock new.
	(MyCircle2 stub source: circle) willReturn: clonedCircle.

	"Act"
	circle myClone.

	"Assert"
	MyCircle2 should receive source: circle
]

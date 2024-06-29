Class {
	#name : 'MyCircle2Test',
	#superclass : 'TestCase',
	#category : 'Q180-Prototype-Tests',
	#package : 'Q180-Prototype-Tests'
}

{ #category : 'tests' }
MyCircle2Test >> testClone [

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
MyCircle2Test >> testSource [

	| result sourceCircle newCircle radius initializedCircle initializedShape |
	"Arrange"
	sourceCircle := Mock new.
	radius := Mock new.
	sourceCircle stub radius willReturn: radius.
	newCircle := Mock new.
	initializedCircle := Mock new.
	(newCircle stub setRadius: radius) willReturn: initializedCircle.
	MyCircle2 stub new willReturn: newCircle.
	initializedShape := Mock new.
	(MyShape stub source: sourceCircle shape: initializedCircle) willReturn: initializedShape.
	

	"Act"
	result := MyCircle2 source: sourceCircle.

	"Assert"
	MyCircle2 should receive new.
	newCircle should receive setRadius: radius.
	MyShape should receive source: sourceCircle shape: initializedCircle.
	self assert: result equals: initializedShape.
]

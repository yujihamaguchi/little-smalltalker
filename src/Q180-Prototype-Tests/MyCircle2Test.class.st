Class {
	#name : 'MyCircle2Test',
	#superclass : 'TestCase',
	#category : 'Q180-Prototype-Tests',
	#package : 'Q180-Prototype-Tests'
}

{ #category : 'tests' }
MyCircle2Test >> testClone [

	| circle clone result |
	"Arrange"
	circle := MyCircle2 new.
	clone := Mock new.
	(MyCircle2 stub source: circle) willReturn: clone.

	"Act"
	result := circle myClone.

	"Assert"
	MyCircle2 should receive source: circle.
	self assert: result equals: clone
]

{ #category : 'tests' }
MyCircle2Test >> testSource [

	| result circle radius clone color |
	"Arrange"
	circle := Mock new.
	radius := Mock new.
	color := Mock new.
	circle stub radius willReturn: radius.
	circle stub color willReturn: color.

	clone := Mock new.
	(clone stub color: color) willReturnYourself.
	(MyCircle2 stub radius: radius) willReturn: clone.

	"Act"
	result := MyCircle2 source: circle.

	"Assert"
	circle should receive radius.
	MyCircle2 should receive radius: radius.
	circle should receive color.
	clone should receive color: color.
	self assert: result equals: clone
]

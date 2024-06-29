Class {
	#name : 'MyRectangle2Test',
	#superclass : 'TestCase',
	#category : 'Q180-Prototype-Tests',
	#package : 'Q180-Prototype-Tests'
}

{ #category : 'tests' }
MyRectangle2Test >> testClone [

	| result rectangle cloned |
	"Arrange"
	rectangle := MyRectangle2 new.
	cloned := Mock new.
	(MyRectangle2 stub source: rectangle) willReturn: cloned.

	"Act"
	result := rectangle myClone.

	"Arrange"
	MyRectangle2 should receive source: rectangle.
	self assert: result equals: cloned
]

{ #category : 'tests' }
MyRectangle2Test >> testSource [

	| rectangle source result width height color |
	"Arrange"
	source := Mock new.
	width := Mock new.
	height := Mock new.
	color := Mock new.
	source stub width willReturn: width.
	source stub height willReturn: height.
	source stub color willReturn: color.

	rectangle := Mock new.
	(rectangle stub color: color) willReturnYourself.
	(MyRectangle2 stub width: width height: height) willReturn: rectangle.

	"Act"
	result := MyRectangle2 source: source.

	"Assert"
	source should receive width.
	source should receive height.
	MyRectangle2 should receive width: width height: height.
	source should receive color.
	self assert: result equals: rectangle
]

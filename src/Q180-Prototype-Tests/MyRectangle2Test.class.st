Class {
	#name : 'MyRectangle2Test',
	#superclass : 'TestCase',
	#category : 'Q180-Prototype-Tests',
	#package : 'Q180-Prototype-Tests'
}

{ #category : 'tests' }
MyRectangle2Test >> testClone [

	| result rectangle clone |
	"Arrange"
	rectangle := MyRectangle2 new.
	clone := Mock new.
	(MyRectangle2 stub source: rectangle) willReturn: clone.

	"Act"
	result := rectangle myClone.

	"Arrange"
	MyRectangle2 should receive source: rectangle.
	self assert: result equals: clone
]

{ #category : 'tests' }
MyRectangle2Test >> testSource [

	| clone rectangle result width height color |
	"Arrange"
	rectangle := Mock new.
	width := Mock new.
	height := Mock new.
	color := Mock new.
	rectangle stub width willReturn: width.
	rectangle stub height willReturn: height.
	rectangle stub color willReturn: color.

	clone := Mock new.
	(clone stub color: color) willReturnYourself.
	(MyRectangle2 stub width: width height: height) willReturn: clone.

	"Act"
	result := MyRectangle2 source: rectangle.

	"Assert"
	rectangle should receive width.
	rectangle should receive height.
	MyRectangle2 should receive width: width height: height.
	rectangle should receive color.
	clone should receive color: color.
	self assert: result equals: clone
]

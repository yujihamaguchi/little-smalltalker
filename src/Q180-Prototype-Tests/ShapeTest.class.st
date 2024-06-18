Class {
	#name : 'ShapeTest',
	#superclass : 'TestCase',
	#category : 'Q180-Prototype-Tests',
	#package : 'Q180-Prototype-Tests'
}

{ #category : 'tests' }
ShapeTest >> testSource [

	| shape source color |
	"Arrange"
	shape := Mock new.
	MyShape stub new willReturn: shape.
	source := Mock new.
	color := Mock new.
	source stub color willReturn: color.

	"Act"
	MyShape source: source.

	"Assert"
	MyShape should receive new.
	source should receive color.
	shape should receive color: color
]

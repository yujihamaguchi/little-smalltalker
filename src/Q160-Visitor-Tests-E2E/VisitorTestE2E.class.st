Class {
	#name : 'VisitorTestE2E',
	#superclass : 'TestCase',
	#category : 'Q160-Visitor-Tests-E2E',
	#package : 'Q160-Visitor-Tests-E2E'
}

{ #category : 'tests' }
VisitorTestE2E >> testVisitorAccepted [

	| result allShapes exportVisitor |
	"Arrange"
	exportVisitor := XMLExportVisitor new.
	allShapes := OrderedCollection new.
	allShapes add: MyDot new.
	allShapes add: MyCircle new.
	allShapes add: MyRectangle new.

	"Act"
	result := ', ' join:
		          (allShapes collect: [ :shape | shape accept: exportVisitor ]).
	"Assert"
	self
		assert: result
		equals: 'XMLed dot, XMLed circle, XMLed rectangle'
]

Class {
	#name : 'VisitorTestE2E',
	#superclass : 'TestCase',
	#category : 'Q160-Visitor-Tests-E2E',
	#package : 'Q160-Visitor-Tests-E2E'
}

{ #category : 'tests' }
VisitorTestE2E >> testVisitorsAccepted [

	| result allShapes exportVisitor dot circle rectangle |
	"Arrange"
	exportVisitor := XMLExportVisitor new.
	dot := MyDot new.
	circle := MyCircle new.
	rectangle := MyRectanble new.
	allShapes := #( dot circle rectangle ).

	"Act"
	result := ', ' join:
		          (allShapes do: [ :shape | shape accept: exportVisitor ]).
	"Assert"
	self
		assert: result
		equals: 'XMLed dot, XMLed circle, XMLed regtangle'
]

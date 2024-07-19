Class {
	#name : 'ForestTestE2E',
	#superclass : 'TestCase',
	#category : 'Q190-Flyweight-Tests-E2E',
	#package : 'Q190-Flyweight-Tests-E2E'
}

{ #category : 'tests' }
ForestTestE2E >> testDraw [

	| result forest |
	"Arrange"
	forest := Forest new.
	forest plantTreeAtX: 1 atY: 2 name: #Oak color: #brown texture: #grainy.
	forest plantTreeAtX: 3 atY: 4 name: #Oak color: #brown texture: #grainy.
	forest plantTreeAtX: 1 atY: 2 name: #Maple color: #tan texture: #smooth.
	
	"Act"
	result := forest draw.

	"Assert"
	self assert: result equals: '#(
		{ x: 1, y: 2, name: #Oak, color: #brown, texture: #grainy }
		{ x: 3, y: 4, name: #Oak, color: #brown, texture: #grainy }
		{ x: 1, y: 2, name: #Maple, color: #tan, texture: #smooth })'
]

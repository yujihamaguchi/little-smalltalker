Class {
	#name : 'ForestTestE2E',
	#superclass : 'TestCase',
	#category : 'Q190-Flyweight-Tests-E2E',
	#package : 'Q190-Flyweight-Tests-E2E'
}

{ #category : 'tests' }
ForestTestE2E >> testPlantTree [

	| forest tree1 tree2 tree3 |
	"Arrange"
	forest := Forest new.

	"Act"
	forest
		plantTreeAtX: 1
		atY: 2
		name: #Oak
		color: #brown
		texture: #grainy.
	forest
		plantTreeAtX: 3
		atY: 4
		name: #Oak
		color: #brown
		texture: #grainy.
	forest
		plantTreeAtX: 1
		atY: 2
		name: #Maple
		color: #tan
		texture: #smooth.

	"Assert"
	tree1 := (forest trees at: 1).
	tree2 := (forest trees at: 2).
	tree3 := (forest trees at: 3).

	self deny: tree1 identicalTo: tree2.
	self assert: tree1 type identicalTo: tree2 type.
	self deny: tree2 identicalTo: tree3.
	self deny: tree2 type identicalTo: tree3 type
]

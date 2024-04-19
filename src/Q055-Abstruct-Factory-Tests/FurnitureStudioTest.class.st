Class {
	#name : #FurnitureStudioTest,
	#superclass : #TestCase,
	#category : #'Q055-Abstruct-Factory-Tests'
}

{ #category : #tests }
FurnitureStudioTest >> testCreateTableSet [

	| factory target |
	"Arrange"
	factory := Mock new.
	target := FurnitureStudio factory: factory.

	"Act"
	target createTableSet.

	"Assert"
	factory should receive createTable.
	factory should receive createChair.
	factory should receive createBench
]

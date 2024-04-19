Class {
	#name : #MyArrayTest,
	#superclass : #TestCase,
	#category : #'Q053-Factory-Method-Tests'
}

{ #category : #tests }
MyArrayTest >> testSortedUsingComparator [

	| array comparator sortBlock sortedArray result |
	"Arrange"
	array := MyArray new.
	comparator := Mock new.
	sortBlock := Mock new.
	comparator stub sortBlock willReturn: sortBlock.
	sortedArray := Mock new.
	(array stub sorted: sortBlock) willReturn: sortedArray.

	"Act"
	result := array sortedUsing: comparator.

	"Assert"
	comparator should receive sortBlock.
	array should receive sorted: sortBlock.
	self assert: result equals: sortedArray
]

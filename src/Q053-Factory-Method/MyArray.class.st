Class {
	#name : #MyArray,
	#superclass : #Array,
	#type : #variable,
	#category : #'Q053-Factory-Method'
}

{ #category : #'as yet unclassified' }
MyArray >> sortedUsing: aComparator [
	| sortBlock |
	sortBlock := aComparator sortBlock.
	^ self sorted: sortBlock
]

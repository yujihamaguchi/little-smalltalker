Class {
	#name : #ListPrinter,
	#superclass : #Object,
	#category : #'Q053-Factory-Method'
}

{ #category : #'as yet unclassified' }
ListPrinter >> createComparator [

	^ self explicitRequirement
]

{ #category : #printing }
ListPrinter >> printList: anArray [

	| comparator sortedArray |
	comparator := self createComparator.
	sortedArray := anArray sortedUsing: comparator.
	^ sortedArray asString
]

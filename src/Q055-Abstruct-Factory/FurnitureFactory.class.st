Class {
	#name : #FurnitureFactory,
	#superclass : #Object,
	#category : #'Q055-Abstruct-Factory'
}

{ #category : #'as yet unclassified' }
FurnitureFactory >> createBench [

	^ self subclassResponsibility 
]

{ #category : #'as yet unclassified' }
FurnitureFactory >> createChair [

	^ self subclassResponsibility 
]

{ #category : #'as yet unclassified' }
FurnitureFactory >> createTable [

	^ self subclassResponsibility 
]

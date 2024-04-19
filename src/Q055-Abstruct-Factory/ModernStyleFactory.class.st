Class {
	#name : #ModernStyleFactory,
	#superclass : #FurnitureFactory,
	#category : #'Q055-Abstruct-Factory'
}

{ #category : #'as yet unclassified' }
ModernStyleFactory >> createBench [

	^ ModernBench new
]

{ #category : #'as yet unclassified' }
ModernStyleFactory >> createChair [

	^ ModernChair new
]

{ #category : #'as yet unclassified' }
ModernStyleFactory >> createTable [

	^ ModernTable new
]

Class {
	#name : #ArtDecoStyleFactory,
	#superclass : #FurnitureFactory,
	#category : #'Q055-Abstruct-Factory'
}

{ #category : #'as yet unclassified' }
ArtDecoStyleFactory >> createBench [

	^ ArtDecoBench new
]

{ #category : #'as yet unclassified' }
ArtDecoStyleFactory >> createChair [

	^ ArtDecoChair new
]

{ #category : #'as yet unclassified' }
ArtDecoStyleFactory >> createTable [

	^ ArtDecoTable new
]

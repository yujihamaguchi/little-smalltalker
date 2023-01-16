Class {
	#name : #ChicagoPastaStoreTest,
	#superclass : #TestCase,
	#category : #'Q053-Abstruct-Factory'
}

{ #category : #tests }
ChicagoPastaStoreTest >> testCreatePasta [

	| target |
	target := ChicagoPastaStore new.
	self
		assert: (target createPasta: #Cheese) class
		equals: ChicagoCheesePasta.
	self assert: (target createPasta: #Karasumi) equals: nil
]

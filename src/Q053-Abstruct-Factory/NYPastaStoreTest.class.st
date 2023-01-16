Class {
	#name : #NYPastaStoreTest,
	#superclass : #TestCase,
	#category : #'Q053-Abstruct-Factory'
}

{ #category : #tests }
NYPastaStoreTest >> testCreatePasta [

	| target |
	target := NYPastaStore new.
	self
		assert: (target createPasta: #Cheese) class
		equals: NYStyleCheesePasta.
	self assert: (target createPasta: #Karasumi) equals: nil
]

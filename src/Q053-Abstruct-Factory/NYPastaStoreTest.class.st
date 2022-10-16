Class {
	#name : #NYPastaStoreTest,
	#superclass : #TestCase,
	#category : #'Q053-Abstruct-Factory'
}

{ #category : #tests }
NYPastaStoreTest >> testCreatePasta [
	| nyPastaStore |
	nyPastaStore := NYPastaStore new.
	self assert: (nyPastaStore createPasta: #Cheese) class equals: NYStyleCheesePasta.
]

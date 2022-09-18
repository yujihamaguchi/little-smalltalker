Class {
	#name : #NYPastaStoreTest,
	#superclass : #TestCase,
	#category : #'Q053-Abstruct-Factory'
}

{ #category : #tests }
NYPastaStoreTest >> testCreatePasta [
	| nyPastaStore nyStyleCheesePasta |
	nyStyleCheesePasta := NYStyleCheesePasta factory: Any name: 'NewYork Style Cheese Pasta'.
	nyPastaStore := NYPastaStore new.
	self assert: (nyPastaStore createPasta: #Cheese) equals: nyStyleCheesePasta.
]

Class {
	#name : #NYPastaStoreTest,
	#superclass : #TestCase,
	#category : #'My-Example005-3-Abstruct-Factory'
}

{ #category : #tests }
NYPastaStoreTest >> testOrderPasta [
	| nyPastaStore nyStyleCheesePasta |
	nyStyleCheesePasta := NYStyleCheesePasta factory: Any name: 'NewYork Style Cheese Pasta'.
	nyPastaStore := NYPastaStore new.
	self assert: (nyPastaStore orderPasta: #Cheese) equals: nyStyleCheesePasta.
]

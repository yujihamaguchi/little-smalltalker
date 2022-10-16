Class {
	#name : #PastaStoreTest,
	#superclass : #TestCase,
	#category : #'Q053-Abstruct-Factory'
}

{ #category : #tests }
PastaStoreTest >> testOrderPasta [
	| pastaStore pasta |
	pasta := Pasta new.
	pasta stub prepare willReturn: Any.
	pastaStore := PastaStore new.
	(pastaStore stub createPasta: #Foo) willReturn: pasta.
	self assert: (pastaStore orderPasta: #Foo) equals: pasta.
	(pastaStore should receive createPasta: #Foo) once.
	pasta should receive prepare once
]

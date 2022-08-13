Class {
	#name : #PastaStoreTest,
	#superclass : #TestCase,
	#category : #'My-Example005-3-Abstruct-Factory'
}

{ #category : #tests }
PastaStoreTest >> testOrderPasta [
	| pastaStore pasta |
	pasta := Pasta factory: Any name: 'foo'.
	pasta stub prepare willReturn: Any.
	pasta stub name willReturn: 'foo'.
	pastaStore := PastaStore new.
	(pastaStore stub createPasta: #Foo) willReturn: pasta.
	self assert: (pastaStore orderPasta: #Foo) name equals: pasta name.
	(pastaStore should receive createPasta: #Foo) once.
	pasta should receive prepare once.

]

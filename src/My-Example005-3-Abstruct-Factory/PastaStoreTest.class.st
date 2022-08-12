Class {
	#name : #PastaStoreTest,
	#superclass : #TestCase,
	#category : #'My-Example005-3-Abstruct-Factory'
}

{ #category : #tests }
PastaStoreTest >> testOrderPasta [
	| pastaStore pasta factory |
	factory := IngredientFactory new.
	factory stub createSauce willReturn: Any.
	pasta := Pasta factory: factory name: 'foo'.
	pasta stub name willReturn: 'foo'.
	pastaStore := PastaStore new.
	(pastaStore stub createPasta: #Foo) willReturn: pasta.
	self assert: (pastaStore orderPasta: #Foo) name equals: pasta name.
	(pastaStore should receive createPasta: #Foo) once.
	pasta should receive prepare once.
	factory should receive createSauce once.

]

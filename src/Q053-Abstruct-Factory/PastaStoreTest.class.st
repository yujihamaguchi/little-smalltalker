Class {
	#name : #PastaStoreTest,
	#superclass : #TestCase,
	#category : #'Q053-Abstruct-Factory'
}

{ #category : #tests }
PastaStoreTest >> testOrderPasta [
	| target pasta preparedPasta |
	pasta := Mock new.
	preparedPasta := Mock new.
	pasta stub prepare willReturn: preparedPasta.

	target := PastaStore new.
	(target stub createPasta: #Foo) willReturn: pasta.

	self assert: (target orderPasta: #Foo) equals: preparedPasta.

	(target should receive createPasta: #Foo) once.
	pasta should receive prepare once
]

Class {
	#name : #PastaTest,
	#superclass : #TestCase,
	#category : #'Q053-Abstruct-Factory'
}

{ #category : #tests }
PastaTest >> testPrepare [
	| factory pasta |
	factory := IngredientFactory new.
	factory stub createSauce willReturn: Any.
	factory stub createNoodle willReturn: Any.
	pasta := Pasta factory: factory name: Any.
	self assert: (pasta prepare) equals: pasta.
	factory should receive createSauce once.
	factory should receive createNoodle once.
]

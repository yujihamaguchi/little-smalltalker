Class {
	#name : #ChicagoIngredientFactoryTest,
	#superclass : #TestCase,
	#category : #'Q053-Abstruct-Factory'
}

{ #category : #tests }
ChicagoIngredientFactoryTest >> testCreateNoodle [ 
	| target |
	target := ChicagoIngredientFactory new.
	self assert: (target createNoodle) class equals: ThickNoodle.
]

{ #category : #tests }
ChicagoIngredientFactoryTest >> testCreateSauce [
	| target |
	target := ChicagoIngredientFactory new.
	self assert: (target createSauce) class equals: CheeseSauce.
]

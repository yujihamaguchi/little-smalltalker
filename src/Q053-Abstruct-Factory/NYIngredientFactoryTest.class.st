Class {
	#name : #NYIngredientFactoryTest,
	#superclass : #TestCase,
	#category : #'Q053-Abstruct-Factory'
}

{ #category : #tests }
NYIngredientFactoryTest >> testCreateNoodle [
	| factory |
	factory := NYIngredientFactory new.
	self assert: factory createNoodle class equals: ThinNoodle
]

{ #category : #tests }
NYIngredientFactoryTest >> testCreateSauce [
	| factory |
	factory := NYIngredientFactory new.
	self assert: (factory createSauce class) equals: ChiliSauce .
]

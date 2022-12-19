Class {
	#name : #NYIngredientFactoryTest,
	#superclass : #TestCase,
	#category : #'Q053-Abstruct-Factory'
}

{ #category : #tests }
NYIngredientFactoryTest >> testCreateNoodle [
	| ingredientFactory |
	ingredientFactory := NYIngredientFactory new.
	self assert: ingredientFactory createNoodle class equals: ThinNoodle.

]

{ #category : #tests }
NYIngredientFactoryTest >> testCreateSauce [
	| ingredientFactory |
	ingredientFactory := NYIngredientFactory new.
	self assert: ingredientFactory createSauce class equals: ChiliSauce
]

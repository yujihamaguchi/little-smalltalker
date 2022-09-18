Class {
	#name : #IngredientFactory,
	#superclass : #Object,
	#category : #'Q053-Abstruct-Factory'
}

{ #category : #'as yet unclassified' }
IngredientFactory >> createNoodle [
	^ self subclassResponsibility
]

{ #category : #'as yet unclassified' }
IngredientFactory >> createSauce [
	^ self subclassResponsibility
]

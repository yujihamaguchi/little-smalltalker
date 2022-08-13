Class {
	#name : #IngredientFactory,
	#superclass : #Object,
	#category : #'My-Example005-3-Abstruct-Factory'
}

{ #category : #'as yet unclassified' }
IngredientFactory >> createNoodle [
	^ self subclassResponsibility
]

{ #category : #'as yet unclassified' }
IngredientFactory >> createSauce [
	^ self subclassResponsibility
]

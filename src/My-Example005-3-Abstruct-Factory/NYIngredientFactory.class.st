Class {
	#name : #NYIngredientFactory,
	#superclass : #IngredientFactory,
	#category : #'My-Example005-3-Abstruct-Factory'
}

{ #category : #'as yet unclassified' }
NYIngredientFactory >> createSauce [
	^ ChiliSauce	 new
]

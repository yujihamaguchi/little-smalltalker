Class {
	#name : #NYIngredientFactory,
	#superclass : #IngredientFactory,
	#category : #'Q053-Abstruct-Factory'
}

{ #category : #'as yet unclassified' }
NYIngredientFactory >> createNoodle [
	^ ThinNoodle new
]

{ #category : #'as yet unclassified' }
NYIngredientFactory >> createSauce [
	^ ChiliSauce new
]

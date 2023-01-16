Class {
	#name : #ChicagoIngredientFactory,
	#superclass : #IngredientFactory,
	#category : #'Q053-Abstruct-Factory'
}

{ #category : #'as yet unclassified' }
ChicagoIngredientFactory >> createNoodle [
	^ ThickNoodle new
]

{ #category : #'as yet unclassified' }
ChicagoIngredientFactory >> createSauce [
	^ CheeseSauce new
]

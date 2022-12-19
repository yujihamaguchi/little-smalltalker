Class {
	#name : #Pasta,
	#superclass : #Object,
	#instVars : [
		'ingredientFactory',
		'name',
		'sauce',
		'noodle'
	],
	#category : #'Q053-Abstruct-Factory'
}

{ #category : #'as yet unclassified' }
Pasta class >> ingredientFactory: anIngredientFactory name: aString [

	^ self new setIngredientFactory: anIngredientFactory name: aString
]

{ #category : #accessing }
Pasta >> name [

	^ name
]

{ #category : #accessing }
Pasta >> noodle [

	^ noodle
]

{ #category : #decoration }
Pasta >> prepare [
	sauce := ingredientFactory createSauce.
	noodle := ingredientFactory createNoodle.
	^ self
]

{ #category : #accessing }
Pasta >> sauce [

	^ sauce
]

{ #category : #initialization }
Pasta >> setIngredientFactory: anIngredientFactory name: aString [
	ingredientFactory := anIngredientFactory.
	name := aString..
	^ self
	
]

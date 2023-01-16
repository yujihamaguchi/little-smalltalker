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
Pasta class >> ingredientFactory: aFactory name: aString [
	^ self new setIngredientFactory: aFactory name: aString
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
	noodle := ingredientFactory createNoodle
]

{ #category : #accessing }
Pasta >> sauce [

	^ sauce
]

{ #category : #initialization }
Pasta >> setIngredientFactory: aFactory name: aString [
	ingredientFactory := aFactory.
	name := aString.
	^ self
]

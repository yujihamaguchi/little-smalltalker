Class {
	#name : #Pizza,
	#superclass : #Object,
	#instVars : [
		'name',
		'dough',
		'sauce',
		'toppings'
	],
	#category : #'Q052-Factory-Method'
}

{ #category : #'as yet unclassified' }
Pizza >> bake [
]

{ #category : #accessing }
Pizza >> box [
]

{ #category : #private }
Pizza >> cut [
]

{ #category : #accessing }
Pizza >> dough [
	^ dough
]

{ #category : #accessing }
Pizza >> name [
	^ name
]

{ #category : #decoration }
Pizza >> prepare [
	^ self subclassResponsibility 
]

{ #category : #accessing }
Pizza >> sauce [
	^ sauce
]

{ #category : #accessing }
Pizza >> toppings [
	^ toppings
]

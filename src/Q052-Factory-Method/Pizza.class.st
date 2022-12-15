Class {
	#name : #Pizza,
	#superclass : #Object,
	#instVars : [
		'dough',
		'name',
		'toppings',
		'sauce'
	],
	#category : #'Q052-Factory-Method'
}

{ #category : #'as yet unclassified' }
Pizza >> addToppings [
	^ self subclassResponsibility 
]

{ #category : #'as yet unclassified' }
Pizza >> createDough [
	^ self subclassResponsibility 
]

{ #category : #'as yet unclassified' }
Pizza >> createSauce [
	^ self subclassResponsibility 
]

{ #category : #accessing }
Pizza >> dough [

	^ dough
]

{ #category : #initialization }
Pizza >> initialize [
	name := 'NewYork Style Cheese Pizza'.
	toppings := OrderedCollection new.
	^ self
]

{ #category : #accessing }
Pizza >> name [

	^ name
]

{ #category : #decoration }
Pizza >> prepare [
	dough := self createDough.
	sauce := self createSauce.
	toppings := self addToppings.
	^ self
]

{ #category : #accessing }
Pizza >> sauce [

	^ sauce
]

{ #category : #accessing }
Pizza >> toppings [

	^ toppings
]

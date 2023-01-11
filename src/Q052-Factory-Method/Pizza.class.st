Class {
	#name : #Pizza,
	#superclass : #Object,
	#instVars : [
		'dough',
		'name',
		'toppings'
	],
	#category : #'Q052-Factory-Method'
}

{ #category : #adding }
Pizza >> addToppings [
	^ self subclassResponsibility 
]

{ #category : #'as yet unclassified' }
Pizza >> createDough [
	^ self subclassResponsibility 
]

{ #category : #accessing }
Pizza >> dough [

	^ dough
]

{ #category : #initialization }
Pizza >> initialize [
	toppings := Set new.
	^ self
]

{ #category : #decoration }
Pizza >> prepare [
	dough := self createDough.
	self addToppings.
	^ self
]

{ #category : #accessing }
Pizza >> toppings [

	^ toppings
]

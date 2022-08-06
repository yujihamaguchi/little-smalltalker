Class {
	#name : #Pizza,
	#superclass : #Object,
	#instVars : [
		'name',
		'dough',
		'sauce',
		'toppings'
	],
	#category : #'My-Example005-Factory-Method-My-Example005-Factory-Method'
}

{ #category : #comparing }
Pizza >> = aPizza [
	^name = aPizza name
]

{ #category : #decoration }
Pizza >> bake [
	^'normal baking..'
]

{ #category : #accessing }
Pizza >> box [
	^'normal boxing..'
]

{ #category : #private }
Pizza >> cut [
	^'normal cutting..'
]

{ #category : #initialization }
Pizza >> initialize [
	super initialize .
]

{ #category : #accessing }
Pizza >> name [
	^name
]

{ #category : #decoration }
Pizza >> prepare [
	^'normal preparing..'
]

{ #category : #initialization }
Pizza >> setName: aNameSting dough: aDoughString sauce: aSauceString toppings: aCollection [
	name := aNameSting .
	dough := aDoughString .
	sauce := aSauceString .
	toppings := aCollection .
	^self
]

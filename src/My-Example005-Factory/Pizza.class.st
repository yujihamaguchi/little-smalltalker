Class {
	#name : #Pizza,
	#superclass : #Object,
	#instVars : [
		'name',
		'dough',
		'sauce',
		'toppings'
	],
	#category : #'My-Example005-Factory'
}

{ #category : #'as yet unclassified' }
Pizza class >> construct [
	^ self subclassResponsibility 
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

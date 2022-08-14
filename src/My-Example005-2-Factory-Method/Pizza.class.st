Class {
	#name : #Pizza,
	#superclass : #Object,
	#instVars : [
		'name',
		'dough',
		'sauce',
		'toppings'
	],
	#category : #'My-Example005-2-Factory-Method'
}

{ #category : #accessing }
Pizza class >> name: aString [
	| pizza |
	pizza := self new.
	pizza setName: aString.
	^ pizza
]

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

{ #category : #accessing }
Pizza >> dough [
	^ dough
]

{ #category : #accessing }
Pizza >> name [
	^name
]

{ #category : #decoration }
Pizza >> prepare [
	^ self subclassResponsibility 
]

{ #category : #accessing }
Pizza >> sauce [
	^ sauce
]

{ #category : #initialization }
Pizza >> setName: aSting [
	name := aSting .

]

{ #category : #accessing }
Pizza >> toppings [
	^ toppings
]

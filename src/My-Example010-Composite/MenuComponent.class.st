Class {
	#name : #MenuComponent,
	#superclass : #Object,
	#instVars : [
		'menuComponents',
		'name',
		'description',
		'price'
	],
	#category : #'My-Example010-Composite'
}

{ #category : #adding }
MenuComponent >> add: aMenuComponent [
	menuComponents ifNil: [ menuComponents := OrderedCollection new ].
	menuComponents add: aMenuComponent.
]

{ #category : #accessing }
MenuComponent >> description [
	^ description
]

{ #category : #accessing }
MenuComponent >> name [
	^ name
]

{ #category : #accessing }
MenuComponent >> price [
	^ price
]

{ #category : #printing }
MenuComponent >> print [
	^ self subclassResponsibility 
]

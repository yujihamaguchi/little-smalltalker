Class {
	#name : #Pasta,
	#superclass : #Object,
	#instVars : [
		'factory',
		'sauce',
		'name'
	],
	#category : #'My-Example005-3-Abstruct-Factory'
}

{ #category : #initialize }
Pasta class >> factory: aFactory name: aString [
	| factory |
	factory := self new.
	factory setFactory: aFactory name: aString.
	^factory
]

{ #category : #comparing }
Pasta >> = aPasta [
	^name = aPasta name
]

{ #category : #accessing }
Pasta >> name [
	^name
]

{ #category : #decoration }
Pasta >> prepare [
	sauce := factory createSauce.
	^self
]

{ #category : #initialization }
Pasta >> setFactory: aFactory name: aString [
	factory := aFactory.
	name := aString.
	^ self
]

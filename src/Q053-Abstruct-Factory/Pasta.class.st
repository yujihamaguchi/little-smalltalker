Class {
	#name : #Pasta,
	#superclass : #Object,
	#instVars : [
		'name',
		'factory',
		'sauce',
		'noodle'
	],
	#category : #'Q053-Abstruct-Factory'
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
	noodle := factory createNoodle.
	^ self
]

{ #category : #initialization }
Pasta >> setFactory: aFactory name: aString [
	factory := aFactory.
	name := aString.
	^ self
]

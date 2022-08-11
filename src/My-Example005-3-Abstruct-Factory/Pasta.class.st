Class {
	#name : #Pasta,
	#superclass : #Object,
	#instVars : [
		'factory',
		'sauce'
	],
	#category : #'My-Example005-3-Abstruct-Factory'
}

{ #category : #initialize }
Pasta class >> factory: aFactory [
	| factory |
	factory := self new.
	factory setFactory: aFactory.
	^factory
]

{ #category : #decoration }
Pasta >> prepare [
	sauce := factory createSauce.
	^self
]

{ #category : #initialization }
Pasta >> setFactory: aFactory [
	factory := aFactory .
	^self
]

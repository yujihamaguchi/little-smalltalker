Class {
	#name : #Pasta,
	#superclass : #Object,
	#instVars : [
		'factory',
		'name',
		'sauce',
		'noodle'
	],
	#category : #'Q053-Abstruct-Factory'
}

{ #category : #'as yet unclassified' }
Pasta class >> factory: aFactory name: aString [
	^ self new setFactory: aFactory name: aString
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

Class {
	#name : #Singleton,
	#superclass : #Object,
	#classVars : [
		'current'
	],
	#category : #'Q060-Singleton'
}

{ #category : #accessing }
Singleton class >> current [
	^ current ifNil: [ 
		  current := self new.
		  current ]
]

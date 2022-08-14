Class {
	#name : #Singleton,
	#superclass : #Object,
	#classVars : [
		'UniqueInstance'
	],
	#category : #'My-Example006-Singleton'
}

{ #category : #accessing }
Singleton class >> current [
	^UniqueInstance ifNil: [ UniqueInstance := self new ]
]

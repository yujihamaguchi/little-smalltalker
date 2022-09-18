Class {
	#name : #Singleton,
	#superclass : #Object,
	#classVars : [
		'UniqueInstance'
	],
	#category : #'Q060-Singleton'
}

{ #category : #accessing }
Singleton class >> current [
	^UniqueInstance ifNil: [ UniqueInstance := self new ]

]

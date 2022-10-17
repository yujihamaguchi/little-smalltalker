Class {
	#name : #Singleton,
	#superclass : #Object,
	#classVars : [
		'uniqueInstance'
	],
	#category : #'Q060-Singleton'
}

{ #category : #accessing }
Singleton class >> current [
	uniqueInstance ifNil: [ uniqueInstance := self new ].
	^ uniqueInstance

]

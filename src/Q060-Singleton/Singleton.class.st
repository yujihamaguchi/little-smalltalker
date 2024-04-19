Class {
	#name : #Singleton,
	#superclass : #Object,
	#classVars : [
		'uniqueInstance'
	],
	#category : #'Q060-Singleton'
}

{ #category : #initialization }
Singleton class >> initialize [
	current := nil
]

{ #category : #'accessing - structure variables' }
Singleton class >> initializeUniqueInstance [

	[ uniqueInstance := self new ] ensure: [ uniqueInstance isNotNil ]
]

{ #category : #'instance creation' }
Singleton class >> uniqueInstance [
	^ uniqueInstance ifNil: [ self initializeUniqueInstance ]
]

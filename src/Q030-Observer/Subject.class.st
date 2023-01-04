Class {
	#name : #Subject,
	#superclass : #Object,
	#instVars : [
		'observers'
	],
	#category : #'Q030-Observer'
}

{ #category : #adding }
Subject >> addObserver: anObserver [
	observers add: anObserver.
]

{ #category : #initialization }
Subject >> initialize [
	observers := Set new.
	^ self
]

{ #category : #'as yet unclassified' }
Subject >> notify [
	observers do: [ :each | each update: self ]
]

Class {
	#name : #Fan,
	#superclass : #Object,
	#instVars : [
		'status'
	],
	#category : #'Q073-Command'
}

{ #category : #initialization }
Fan >> initialize [

	super initialize .
	status := #off
]

{ #category : #'as yet unclassified' }
Fan >> off [

	status := #off
]

{ #category : #'as yet unclassified' }
Fan >> on [

	status := #on
]

{ #category : #accessing }
Fan >> status [

	^ status
]

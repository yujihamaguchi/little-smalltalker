Class {
	#name : #Duck,
	#superclass : #Object,
	#instVars : [
		'flyBehavier'
	],
	#category : #'My-Example002-Strategy'
}

{ #category : #'as yet unclassified' }
Duck class >> flyBehavier: aFlyBehavier [
	^self new setFlyBehavier: aFlyBehavier
]

{ #category : #'as yet unclassified' }
Duck >> fly [
	^flyBehavier fly
]

{ #category : #initialization }
Duck >> setFlyBehavier: aFlyBehavier [
	flyBehavier := aFlyBehavier.
	^self
]

{ #category : #'as yet unclassified' }
Duck >> swim [
	^'swimming!'
]

Class {
	#name : #Duck,
	#superclass : #Object,
	#instVars : [
		'flyBehavier'
	],
	#category : #'Q020-Strategy'
}

{ #category : #initialization }
Duck class >> flyBehavier: aFlyBehavier [
	^ self new setFlyBehavier: aFlyBehavier
]

{ #category : #'as yet unclassified' }
Duck >> fly [
	^ flyBehavier fly
]

{ #category : #private }
Duck >> setFlyBehavier: aFlyBehavier [
	flyBehavier := aFlyBehavier.
	^ self
]

{ #category : #'as yet unclassified' }
Duck >> swim [
	^ 'swimming' 
]

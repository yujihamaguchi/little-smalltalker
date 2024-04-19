Class {
	#name : #Duck,
	#superclass : #Object,
	#instVars : [
		'flyBahavier'
	],
	#category : #'Q020-Strategy'
}

{ #category : #'as yet unclassified' }
Duck class >> flyBehavier: aFlyBehavier [

	^ self new setFlyBehavier: aFlyBehavier
]

{ #category : #'as yet unclassified' }
Duck >> fly [

	^ flyBahavier fly
]

{ #category : #initialization }
Duck >> setFlyBehavier: aFlyBahavier [

	flyBahavier := aFlyBahavier.
	^ self
]

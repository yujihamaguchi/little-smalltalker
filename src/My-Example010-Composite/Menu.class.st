Class {
	#name : #Menu,
	#superclass : #MenuComponent,
	#category : #'My-Example010-Composite'
}

{ #category : #'as yet unclassified' }
Menu class >> name: aName description: aDescription [
	^ self new setName: aName description: aDescription
]

{ #category : #printing }
Menu >> print [
	^  '- ', name, ', ', description
]

{ #category : #initialization }
Menu >> setName: aName description: aDescription [
	name := aName.
	description := aDescription.
	^ self
]

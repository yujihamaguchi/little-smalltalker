Class {
	#name : #Menu,
	#superclass : #MenuComponent,
	#instVars : [
		'name',
		'description',
		'menuComponents'
	],
	#category : #'Q090-Composite'
}

{ #category : #'as yet unclassified' }
Menu class >> name: aName description: aDescription [
	^ self new setName: aName description: aDescription
]

{ #category : #adding }
Menu >> add: aMenuComponent [
	menuComponents add: aMenuComponent.
]

{ #category : #printing }
Menu >> print [
	^ '<' , name , ', ' , description , Character cr asString
	  , (menuComponents flatCollect: [ :c | c print ]) , '>'
]

{ #category : #initialization }
Menu >> setName: aName description: aDescription [
	menuComponents := OrderedCollection new.
	name := aName.
	description := aDescription.
	^ self
]

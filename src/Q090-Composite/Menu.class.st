Class {
	#name : #Menu,
	#superclass : #MenuComponent,
	#instVars : [
		'name',
		'description',
		'items'
	],
	#category : #'Q090-Composite'
}

{ #category : #'as yet unclassified' }
Menu class >> name: aNameString description: aDescriptionString [
	^ self new setName: aNameString description: aDescriptionString
]

{ #category : #adding }
Menu >> add: anItem [
	items add: anItem.
]

{ #category : #printing }
Menu >> print [
	^ '<', name, ', ', description, String cr, (items flatCollect: [ :item | item print ])	, '>'
]

{ #category : #removing }
Menu >> remove: aComponent [
  items := items reject: [ :each | aComponent = each ].
]

{ #category : #initialization }
Menu >> setName: aNameString description: aDescriptionString [
	name := aNameString.
	description := aDescriptionString.
	items := OrderedCollection new.
	^ self
]

Class {
	#name : #Menu,
	#superclass : #MenuComponent,
	#instVars : [
		'menuComponents'
	],
	#category : #'Q090-Composite'
}

{ #category : #adding }
Menu >> add: aMenuComponent [
	menuComponents ifNil: [ menuComponents := OrderedCollection new ].
	menuComponents add: aMenuComponent
]

{ #category : #printing }
Menu >> print [
	menuComponents do: [ :each | each print ]
]

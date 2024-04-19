Class {
	#name : #Menu,
	#superclass : #Object,
	#traits : 'TPrintingMenuComponent',
	#classTraits : 'TPrintingMenuComponent classTrait',
	#instVars : [
		'menuComponents',
		'title'
	],
	#category : #'Q090-Composite'
}

{ #category : #accessing }
Menu class >> title: aString [
	^ self new setTitle: aString
]

{ #category : #adding }
Menu >> add: aMenuComponent [

	menuComponents ifNil: [ menuComponents := OrderedCollection new ].
	menuComponents add: aMenuComponent
]

{ #category : #printing }
Menu >> asPrintingString: aDepthNumber [

	^ (self titleForPrinting: aDepthNumber)
	  , (self subComponentsForPrinting: aDepthNumber + 1)
]

{ #category : #initialization }
Menu >> setTitle: aString [

	title := aString.
	^ self
]

{ #category : #'as yet unclassified' }
Menu >> subComponentsForPrinting: aDepthNumber [

	^ (menuComponents collect: [ :c | c asPrintingString: aDepthNumber ]) 
		  joinUsing: String cr
]

{ #category : #printing }
Menu >> titleForPrinting: aDepthNumber [

	^ (self indentStringFor: aDepthNumber) , '[' , title , ']'
	  , String cr
]

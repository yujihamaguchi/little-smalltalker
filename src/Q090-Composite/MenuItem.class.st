Class {
	#name : #MenuItem,
	#superclass : #Object,
	#traits : 'TPrintingMenuComponent',
	#classTraits : 'TPrintingMenuComponent classTrait',
	#instVars : [
		'title'
	],
	#category : #'Q090-Composite'
}

{ #category : #accessing }
MenuItem class >> title: aString [
	^ self new setTitle: aString
]

{ #category : #printing }
MenuItem >> asPrintingString: aDepthNumber [

	^ self titleForPrinting: aDepthNumber
]

{ #category : #initialization }
MenuItem >> setTitle: aString [

	title := aString.
	^ self
]

{ #category : #printing }
MenuItem >> titleForPrinting: aDepthNumber [

	^ (self indentStringFor: aDepthNumber) , title
]

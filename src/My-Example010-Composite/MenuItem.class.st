Class {
	#name : #MenuItem,
	#superclass : #MenuComponent,
	#category : #'My-Example010-Composite'
}

{ #category : #'as yet unclassified' }
MenuItem class >> name: aName description: aDescription price: aPrice [
	^ self new setName: aName description: aDescription price: aPrice
]

{ #category : #printing }
MenuItem >> print [
	^ '-- ', name, ', ', description, ', ', price
]

{ #category : #initialization }
MenuItem >> setName: aName description: aDescription price: aPrice [
	name := aName.
	description := aDescription .
	price := aPrice.
	^ self
]

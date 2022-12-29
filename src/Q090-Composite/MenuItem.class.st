Class {
	#name : #MenuItem,
	#superclass : #MenuComponent,
	#instVars : [
		'name'
	],
	#category : #'Q090-Composite'
}

{ #category : #accessing }
MenuItem class >> name: aString [
	^ self new setName: aString
]

{ #category : #printing }
MenuItem >> print [
	^ name
]

{ #category : #initialization }
MenuItem >> setName: aString [
	name := aString.
	^ self
]

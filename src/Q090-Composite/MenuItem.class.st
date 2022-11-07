Class {
	#name : #MenuItem,
	#superclass : #MenuComponent,
	#instVars : [
		'name',
		'description',
		'price'
	],
	#category : #'Q090-Composite'
}

{ #category : #'as yet unclassified' }
MenuItem class >> name: aNameString description: aDescriptionString price: aDecimal [
	^ self new setName: aNameString description: aDescriptionString price: aDecimal
]

{ #category : #adding }
MenuItem >> add: aMenuComponent [

]

{ #category : #printing }
MenuItem >> print [
	^ '-- ', name, ', ', description, ', ', price asString, String cr
]

{ #category : #removing }
MenuItem >> remove: aComponent [
]

{ #category : #initialization }
MenuItem >> setName: aNameString description: aDescriptionString price: aDecimal [
	name := aNameString.
	description := aDescriptionString.
	price := aDecimal.
	^ self
]

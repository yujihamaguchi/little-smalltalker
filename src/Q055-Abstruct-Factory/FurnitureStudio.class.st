Class {
	#name : #FurnitureStudio,
	#superclass : #Object,
	#instVars : [
		'table',
		'chair',
		'bench',
		'factory'
	],
	#category : #'Q055-Abstruct-Factory'
}

{ #category : #initialize }
FurnitureStudio class >> factory: aFactory [

	^ self new setFactory: aFactory
]

{ #category : #accessing }
FurnitureStudio >> bench [

	^ bench
]

{ #category : #accessing }
FurnitureStudio >> chair [

	^ chair
]

{ #category : #'as yet unclassified' }
FurnitureStudio >> createTableSet [

	table := factory createTable.
	chair := factory createChair.
	bench := factory createBench
]

{ #category : #accessing }
FurnitureStudio >> factory [

	^ factory
]

{ #category : #initialization }
FurnitureStudio >> setFactory: aFactory [

	factory := aFactory.
	^ self
]

{ #category : #accessing }
FurnitureStudio >> table [

	^ table
]

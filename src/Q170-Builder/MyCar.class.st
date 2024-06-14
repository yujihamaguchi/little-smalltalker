Class {
	#name : 'MyCar',
	#superclass : 'Object',
	#instVars : [
		'engine',
		'seats'
	],
	#category : 'Q170-Builder',
	#package : 'Q170-Builder'
}

{ #category : 'accessing' }
MyCar >> engine [

	^ engine
]

{ #category : 'accessing' }
MyCar >> engine: aString [

	engine := aString
]

{ #category : 'as yet unclassified' }
MyCar >> seats [

	^ seats
]

{ #category : 'as yet unclassified' }
MyCar >> seats: aString [

	seats := aString
]

Class {
	#name : 'CarProduct',
	#superclass : 'Object',
	#instVars : [
		'engine',
		'seats'
	],
	#category : 'Q170-Builder',
	#package : 'Q170-Builder'
}

{ #category : 'accessing' }
CarProduct >> engine [

	^ engine
]

{ #category : 'accessing' }
CarProduct >> engine: aString [

	engine := aString
]

{ #category : 'as yet unclassified' }
CarProduct >> seats [

	^ seats
]

{ #category : 'as yet unclassified' }
CarProduct >> seats: aString [

	seats := aString
]

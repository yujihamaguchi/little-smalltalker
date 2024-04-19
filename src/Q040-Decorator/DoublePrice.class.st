Class {
	#name : #DoublePrice,
	#superclass : #MarginPrice,
	#traits : 'TPrice',
	#classTraits : 'TPrice classTrait',
	#category : #'Q040-Decorator'
}

{ #category : #accessing }
DoublePrice >> value [

	^ originalPrice value * 2
]

Class {
	#name : #Observer,
	#superclass : #Object,
	#category : #'Q030-Observer'
}

{ #category : #'as yet unclassified' }
Observer >> updateTemperature: aNumber1 humidity: aNumber2 pressure: aNumber3 [
	^ self subclassResponsibility 
]

Class {
	#name : #MyMoneySum,
	#superclass : #Object,
	#instVars : [
		'monies'
	],
	#category : #'My-Example001-Money'
}

{ #category : #'as yet unclassified' }
MyMoneySum class >> monies: aCollection [
	^self new setMonies: aCollection
]

{ #category : #arithmetic }
MyMoneySum >> + aMoney [
	^aMoney addMoneySum: self
]

{ #category : #adding }
MyMoneySum >> addMoney: aMoney [
	^self species monies: (monies copyWith: aMoney)
]

{ #category : #arithmetic }
MyMoneySum >> addMoneySum: aMoneySum [
	^self species monies: monies, aMoneySum monies
]

{ #category : #accessing }
MyMoneySum >> monies [
	^monies
]

{ #category : #initialization }
MyMoneySum >> setMonies: aCollection [
	monies := aCollection.
	^self
]

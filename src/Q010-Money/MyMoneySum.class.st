Class {
	#name : #MyMoneySum,
	#superclass : #Object,
	#instVars : [
		'monies'
	],
	#category : #'Q010-Money'
}

{ #category : #'as yet unclassified' }
MyMoneySum class >> monies: aCollection [
	^ self new setMonies: aCollection
]

{ #category : #arithmetic }
MyMoneySum >> + aMoney [
	^ aMoney addMoneySum: self
]

{ #category : #adding }
MyMoneySum >> addMoney: aMoney [
	monies add: aMoney.
	^ self
]

{ #category : #adding }
MyMoneySum >> addMoneySum: aMoneySum [
	monies addAll: aMoneySum monies.
	^ self
]

{ #category : #'as yet unclassified' }
MyMoneySum >> monies [
	^ monies 
]

{ #category : #'as yet unclassified' }
MyMoneySum >> setMonies: aCollection [
	monies := aCollection.
	^ self
]

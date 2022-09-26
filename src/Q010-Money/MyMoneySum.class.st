Class {
	#name : #MyMoneySum,
	#superclass : #Object,
	#instVars : [
		'monies'
	],
	#category : #'Q010-Money'
}

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

{ #category : #initialization }
MyMoneySum >> initialize [
	monies := OrderedCollection new.
	^ self
]

{ #category : #'as yet unclassified' }
MyMoneySum >> monies [
	^ monies 
]

{ #category : #accessing }
MyMoneySum >> monies: aCollection [
	monies := aCollection
]

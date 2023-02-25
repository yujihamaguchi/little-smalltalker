Class {
	#name : #MyMoneySum,
	#superclass : #Object,
	#instVars : [
		'monies'
	],
	#category : #'Q010-Money'
}

{ #category : #initialization }
MyMoneySum class >> monies: aCollection [
	^ self new setMonies: aCollection
]

{ #category : #arithmetic }
MyMoneySum >> + aMoney [
	^ aMoney plusMoneySum: self
]

{ #category : #comparing }
MyMoneySum >> = aMyMoneySum [
	^ monies = aMyMoneySum monies
]

{ #category : #accessing }
MyMoneySum >> monies [

	^ monies
]

{ #category : #arithmetic }
MyMoneySum >> plusMoney: aMoney [
	monies add: aMoney.
	^ self
]

{ #category : #arithmetic }
MyMoneySum >> plusMoneySum: aMoneySum [
	monies addAll: aMoneySum monies.
	^ self
]

{ #category : #initialization }
MyMoneySum >> setMonies: aCollection [
	monies := aCollection
]

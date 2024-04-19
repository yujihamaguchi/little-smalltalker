Class {
	#name : #MyMoneySum,
	#superclass : #Object,
	#traits : 'TMyMoneyPlus',
	#classTraits : 'TMyMoneyPlus classTrait',
	#instVars : [
		'monies'
	],
	#category : #'Q010-Money'
}

{ #category : #'as yet unclassified' }
MyMoneySum class >> monies: someMyMonies [
	^ self new setMonies: someMyMonies 
]

{ #category : #arithmetic }
MyMoneySum >> + aMyMoney [

	^ aMyMoney addMyMoneySum: self
]

{ #category : #comparing }
MyMoneySum >> = aMyMoneySum [

	^ self monies = aMyMoneySum monies
]

{ #category : #'as yet unclassified' }
MyMoneySum >> addMyMoney: aMyMoney [

	monies add: aMyMoney.
	^ self
]

{ #category : #'as yet unclassified' }
MyMoneySum >> addMyMoneySum: aMyMoneySum [

	monies addAll: aMyMoneySum monies.
	^ self
]

{ #category : #accessing }
MyMoneySum >> monies [

	^ monies
]

{ #category : #initialization }
MyMoneySum >> setMonies: someMyMoneies [

	monies := someMyMoneies.
	^ self
]

Class {
	#name : #MyMoneySum,
	#superclass : #Object,
	#instVars : [
		'monies'
	],
	#category : #'Q010-Money'
}

{ #category : #arithmetic }
MyMoneySum >> + aMoneyLike [
	^ aMoneyLike addAll: self
]

{ #category : #adding }
MyMoneySum >> add: aMyMoney [
	monies add: aMyMoney.
	^ self
]

{ #category : #adding }
MyMoneySum >> addAll: aMyMoneySum [
	monies addAll: aMyMoneySum monies.
	^ self
]

{ #category : #initialization }
MyMoneySum >> initialize [
	monies := OrderedCollection new.
	^ self
]

{ #category : #accessing }
MyMoneySum >> monies [
	^ monies
]

{ #category : #accessing }
MyMoneySum >> monies: aCollection [
	monies := aCollection.
	^ self
]

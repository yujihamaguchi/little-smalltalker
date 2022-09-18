Class {
	#name : #MyMoney,
	#superclass : #Object,
	#instVars : [
		'amount',
		'currency'
	],
	#category : #'Q010-Money'
}

{ #category : #'as yet unclassified' }
MyMoney class >> amount: aNumber currency: aSymbol [
	^ self new setAmount: aNumber currency: aSymbol
]

{ #category : #arithmetic }
MyMoney >> + aMoney [
	^ MyMoney amount: (amount + aMoney amount) currency: currency
]

{ #category : #comparing }
MyMoney >> = aMoney [
	^ amount = aMoney amount and: (currency = aMoney currency)
	
]

{ #category : #accessing }
MyMoney >> amount [
	^ amount
]

{ #category : #accessing }
MyMoney >> currency [
	^ currency 
]

{ #category : #initialization }
MyMoney >> setAmount: aNumber currency: aSymbol [
	amount := aNumber.
	currency := aSymbol.
	^ self
]

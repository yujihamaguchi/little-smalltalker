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

	^ aMoney addMoney: self
]

{ #category : #comparing }
MyMoney >> = aMoney [
	^ currency = aMoney currency and: amount = aMoney amount
]

{ #category : #adding }
MyMoney >> addMoney: aMoney [

	^ currency = aMoney currency
		  ifTrue: [ 
		  self class amount: amount + aMoney amount currency: currency ]
		  ifFalse: [ 
		  MyMoneySum new initialize monies: (Bag with: self with: aMoney) ]
]

{ #category : #adding }
MyMoney >> addMoneySum: aMoneySum [
	^ aMoneySum addMoney: self
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

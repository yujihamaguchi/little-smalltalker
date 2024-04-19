Class {
	#name : #MyMoney,
	#superclass : #Object,
	#traits : 'TMyMoneyPlus',
	#classTraits : 'TMyMoneyPlus classTrait',
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
MyMoney >> + aMyMoney [

	^ aMyMoney addMyMoney: self
]

{ #category : #comparing }
MyMoney >> = aMyMoney [

	^ currency = aMyMoney currency and: amount = aMyMoney amount
]

{ #category : #'as yet unclassified' }
MyMoney >> addMyMoney: aMyMoney [

	^ self currency = aMyMoney currency
		  ifTrue: [
		  self class amount: amount + aMyMoney amount currency: currency ]
		  ifFalse: [ MyMoneySum monies: (Bag with: self with: aMyMoney) ]
]

{ #category : #adding }
MyMoney >> addMyMoneySum: aMyMoneySum [

	^ aMyMoneySum addMyMoney: self
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

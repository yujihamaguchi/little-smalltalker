Class {
	#name : #MyMoney,
	#superclass : #Object,
	#instVars : [
		'amount',
		'currency'
	],
	#category : #'Q010-Money'
}

{ #category : #initialization }
MyMoney class >> amount: aNumber currency: aSymbol [
	^ self new setAmount: aNumber currency: aSymbol 
]

{ #category : #arithmetic }
MyMoney >> + aMoney [
	^ aMoney plusMoney: self
]

{ #category : #comparing }
MyMoney >> = aMoney [
	^ currency = aMoney currency and: amount = aMoney amount
]

{ #category : #accessing }
MyMoney >> amount [

	^ amount
]

{ #category : #accessing }
MyMoney >> currency [

	^ currency
]

{ #category : #arithmetic }
MyMoney >> plusMoney: aMoney [
	^ currency = aMoney currency
		  ifTrue: [ 		
		  self class amount: amount + aMoney amount currency: currency ]
		  ifFalse: [ 
			  MyMoneySum monies: ({ 
					   self.
					   aMoney } as: Bag) ]
]

{ #category : #arithmetic }
MyMoney >> plusMoneySum: aMyMoneySum [
	^ aMyMoneySum plusMoney: self
]

{ #category : #initialization }
MyMoney >> setAmount: aNumber currency: aSymbol [
	amount := aNumber.
	currency := aSymbol.
	^ self
]

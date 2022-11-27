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
MyMoney >> + aMoneyLike [
	^ aMoneyLike add: self
]

{ #category : #comparing }
MyMoney >> = aMyMoney [
	^ currency = aMyMoney currency and: amount = aMyMoney amount
]

{ #category : #adding }
MyMoney >> add: aMyMoney [
	currency = aMyMoney currency
		ifTrue: [ 
		^ self setAmount: amount + aMyMoney amount currency: currency ]
		ifFalse: [ 
			^ MyMoneySum new initialize monies:
				  (OrderedCollection with: self with: aMyMoney) ]
]

{ #category : #adding }
MyMoney >> addAll: aMyMoneySum [
	^ aMyMoneySum add: self
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

Class {
	#name : #MyMoneyTest,
	#superclass : #TestCase,
	#category : #'Q010-Money'
}

{ #category : #tests }
MyMoneyTest >> test001Plus [
	| usd1 usd2 expected |
	usd1 := MyMoney amount: 5 currency: #USD.
	usd2 := MyMoney amount: 7 currency: #USD.
	expected := MyMoney amount: 12 currency: #USD.
	self assert: usd1 + usd2 equals: expected
]

{ #category : #tests }
MyMoneyTest >> test002PlusDifferentCurrency [
	| usd gbp expected |
	usd := MyMoney amount: 5 currency: #USD.
	gbp := MyMoney amount: 7 currency: #GBP.
	expected := MyMoneySum new initialize.
	expected monies: (OrderedCollection with: usd with: gbp).
	self assert: (usd + gbp) monies asSet equals: expected monies asSet
]

{ #category : #tests }
MyMoneyTest >> test003PlusMoneyAndMoneySum [
	| usd gbp expected |
	usd := MyMoney amount: 5 currency: #USD.
	gbp := MyMoney amount: 7 currency: #GBP.
	expected := MyMoneySum new initialize.
	expected monies: (OrderedCollection with: usd with: gbp with: usd).
	self assert: (usd + (gbp + usd)) monies asSet equals: expected monies asSet
]

{ #category : #tests }
MyMoneyTest >> test004PlusMoneySumAndMoney [
	| usd gbp expected |
	usd := MyMoney amount: 5 currency: #USD.
	gbp := MyMoney amount: 7 currency: #GBP.
	expected := MyMoneySum new initialize.
	expected monies: (OrderedCollection with: usd with: gbp with: usd).
	self assert: (usd + gbp + usd) monies asSet equals: expected monies asSet
]

{ #category : #tests }
MyMoneyTest >> test005PlusMoneySumAndMoneySum [
	| usd gbp expected |
	usd := MyMoney amount: 5 currency: #USD.
	gbp := MyMoney amount: 7 currency: #GBP.
	expected := MyMoneySum new initialize.
	expected monies: (Array with: usd with: gbp with: usd with: gbp).
	self assert: ((usd + gbp) + (usd + gbp)) monies asSet equals: expected monies asSet.
]

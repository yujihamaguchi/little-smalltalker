Class {
	#name : #MyMoneyTest,
	#superclass : #TestCase,
	#category : #'My-Example'
}

{ #category : #tests }
MyMoneyTest >> testPlus [
	| usd1 usd2 expected |
	usd1 := MyMoney amount: 5 currency: #USD.
	usd2 := MyMoney amount: 7 currency: #USD.
	expected := MyMoney amount: 12 currency: #USD.
	self assert: usd1 + usd2 equals: expected
]

{ #category : #tests }
MyMoneyTest >> testPlusDifferentCurrency [
	| usd gbp expected |
	usd := MyMoney amount: 5 currency: #USD.
	gbp := MyMoney amount: 7 currency: #GBP.
	expected := MyMoneySum monies: (Array with: usd with: gbp).
	self assert: (usd + gbp) monies asSet equals: expected monies asSet
]

{ #category : #tests }
MyMoneyTest >> testPlusMoneyAndMoneySum [
	| usd gbp expected |
	usd := MyMoney amount: 5 currency: #USD.
	gbp := MyMoney amount: 7 currency: #GBP.
	expected := MyMoneySum monies: (Array with: usd with: gbp with: usd).
	self assert: (usd + (gbp + usd)) monies asSet equals: expected monies asSet
]

{ #category : #tests }
MyMoneyTest >> testPlusMoneySumAndMoney [
	| usd gbp expected |
	usd := MyMoney amount: 5 currency: #USD.
	gbp := MyMoney amount: 7 currency: #GBP.
	expected := MyMoneySum monies: (Array with: usd with: gbp with: usd).
	self assert: (usd + gbp + usd) monies asSet equals: expected monies asSet
]

{ #category : #tests }
MyMoneyTest >> testPlusMoneySumAndMoneySum [
	| usd gbp expected |
	usd := MyMoney amount: 5 currency: #USD.
	gbp := MyMoney amount: 7 currency: #GBP.
	expected := MyMoneySum monies: (Array with: usd with: gbp with: usd with: gbp).
	self assert: ((usd + gbp) + (usd + gbp)) monies asSet equals: expected monies asSet.
]

Class {
	#name : #MyMoneyTest,
	#superclass : #TestCase,
	#category : #'Q010-Money'
}

{ #category : #tests }
MyMoneyTest >> test001PlusMoney [

	| money1 money2 expected |
	money1 := MyMoney amount: 1 currency: #USD.
	money2 := MyMoney amount: 2 currency: #USD.

	expected := MyMoney amount: 3 currency: #USD.

	self assert: money1 + money2 equals: expected
]

{ #category : #tests }
MyMoneyTest >> test002PlusMoneyWithDifferentCurrencies [

	| usd gbp expected |
	usd := MyMoney amount: 1 currency: #USD.
	gbp := MyMoney amount: 2 currency: #GBP.

	expected := MyMoneySum monies: (Bag with: usd with: gbp).

	self assert: usd + gbp equals: expected
]

{ #category : #tests }
MyMoneyTest >> test003PlusMoneyAndMoneySum [

	| usd gbp expected |
	usd := MyMoney amount: 1 currency: #USD.
	gbp := MyMoney amount: 2 currency: #GBP.

	expected := MyMoneySum monies: (Bag with: usd with: gbp with: usd).

	self assert: usd + (gbp + usd) equals: expected
]

{ #category : #tests }
MyMoneyTest >> test004PlusMoneySumAndMoney [

	| usd gbp expected |
	usd := MyMoney amount: 1 currency: #USD.
	gbp := MyMoney amount: 2 currency: #GBP.

	expected := MyMoneySum monies: (Bag with: usd with: gbp with: usd).

	self assert: usd + gbp + usd equals: expected
]

{ #category : #tests }
MyMoneyTest >> test005PlusMoneySumAndMoneySum [

	| usd gbp expected |
	usd := MyMoney amount: 1 currency: #USD.
	gbp := MyMoney amount: 2 currency: #GBP.

	expected := MyMoneySum monies: (Bag
			             with: usd
			             with: gbp
			             with: usd
			             with: gbp).

	self assert: usd + gbp + (usd + gbp) equals: expected
]

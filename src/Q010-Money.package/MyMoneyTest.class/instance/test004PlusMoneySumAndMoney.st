tests
test004PlusMoneySumAndMoney

	| usd gbp expected |
	usd := MyMoney amount: 1 currency: #USD.
	gbp := MyMoney amount: 2 currency: #GBP.

	expected := MyMoneySum monies: (Bag with: usd with: gbp with: usd).

	self assert: usd + gbp + usd equals: expected
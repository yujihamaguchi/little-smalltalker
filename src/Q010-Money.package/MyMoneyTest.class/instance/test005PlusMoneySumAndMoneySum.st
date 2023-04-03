tests
test005PlusMoneySumAndMoneySum

	| usd gbp expected |
	usd := MyMoney amount: 1 currency: #USD.
	gbp := MyMoney amount: 2 currency: #GBP.

	expected := MyMoneySum monies: (Bag
			             with: usd
			             with: gbp
			             with: usd
			             with: gbp).

	self assert: usd + gbp + (usd + gbp) equals: expected
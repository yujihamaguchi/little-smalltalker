tests
test001PlusMoney

	| money1 money2 expected |
	money1 := MyMoney amount: 1 currency: #USD.
	money2 := MyMoney amount: 2 currency: #USD.

	expected := MyMoney amount: 3 currency: #USD.

	self assert: money1 + money2 equals: expected
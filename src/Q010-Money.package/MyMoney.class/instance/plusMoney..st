arithmetic
plusMoney: aMoney
	^ currency = aMoney currency
		  ifTrue: [ 		
		  self class amount: amount + aMoney amount currency: currency ]
		  ifFalse: [ 
			  MyMoneySum monies: ({ 
					   self.
					   aMoney } as: Bag) ]
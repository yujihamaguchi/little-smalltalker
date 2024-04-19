Class {
	#name : #MenuStringTest,
	#superclass : #TestCase,
	#category : #'Q090-Composite-Tests-E2E'
}

{ #category : #tests }
MenuStringTest >> testAsPrintingString [

	| menu subMenu1 item1 item2 item3 subMenu2 item4 |
	menu := Menu title: 'Ground menu'.
	subMenu1 := Menu title: 'Food'.
	subMenu2 := Menu title: 'Drink'.
	item1 := MenuItem title: 'foo'.
	item2 := MenuItem title: 'bar'.
	item3 := MenuItem title: 'baz'.
	item4 := MenuItem title: 'hoge'.

	menu add: item1.
	menu add: subMenu1.
	menu add: subMenu2.
	subMenu1 add: item2.
	subMenu1 add: item3.
	subMenu2 add: item4.

	self assert: (menu asPrintingString: 0) equals: '[Ground menu]
  foo
  [Food]
    bar
    baz
  [Drink]
    hoge'
]

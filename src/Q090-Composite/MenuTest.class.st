Class {
	#name : #MenuTest,
	#superclass : #TestCase,
	#category : #'Q090-Composite'
}

{ #category : #tests }
MenuTest >> testPrintMenu [

	| pancakeHouseMenu dinerMenu cafeMenu dessertMenu allMenus pasta applePie |
	allMenus := Menu name: 'All Menu' description: 'All'.
	pancakeHouseMenu := Menu
		                    name: 'Pancake House Menu'
		                    description: 'Breakfast'.
	dinerMenu := Menu name: 'Diner Menu' description: 'Lunch'.
	cafeMenu := Menu name: 'Cafe Menu' description: 'Dinner'.
	dessertMenu := Menu name: 'Dessert Menu' description: 'Dessert'.
	pasta := MenuItem name: 'Pasta' description: 'Good Pasta' price: 3.89.
	applePie := MenuItem
		            name: 'Apple pie'
		            description: 'Good Pie'
		            price: 1.59.

	allMenus add: pancakeHouseMenu.
	allMenus add: dinerMenu.
	allMenus add: cafeMenu.
	dinerMenu add: pasta.
	dinerMenu add: dessertMenu.
	dessertMenu add: applePie.

	self assert: allMenus print equals: '<All Menu, All
<Pancake House Menu, Breakfast
><Diner Menu, Lunch
-- Pasta, Good Pasta, 3.89
<Dessert Menu, Dessert
-- Apple pie, Good Pie, 1.59
>><Cafe Menu, Dinner
>>'.
	
	dinerMenu remove: pasta.
	self assert: allMenus print equals: '<All Menu, All
<Pancake House Menu, Breakfast
><Diner Menu, Lunch
<Dessert Menu, Dessert
-- Apple pie, Good Pie, 1.59
>><Cafe Menu, Dinner
>>'.

	dinerMenu remove: dessertMenu.
	self assert: allMenus print equals: '<All Menu, All
<Pancake House Menu, Breakfast
><Diner Menu, Lunch
><Cafe Menu, Dinner
>>'

	"	dinerMenu remove: 
	self assert: allMenus print equals: '<All Menu, All
<Pancake House Menu, Breakfast
><Diner Menu, Lunch
-- Pasta, Good Pasta, 3.89
<Dessert Menu, Dessert
-- Apple pie, Good Pie, 1.59
>><Cafe Menu, Dinner
>>'
"
	"
- All Menu
  - Pancake House Menu
  - Diner Menu
    * Pasta
    - Dessert Menu
    * Apple pie
  - Cafe Menu
"
]

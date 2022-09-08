Class {
	#name : #MenuTest,
	#superclass : #TestCase,
	#category : #'My-Example010-Composite'
}

{ #category : #tests }
MenuTest >> testPrintMenu [
	| pancakeHouseMenu dinerMenu cafeMenu dessertMenu allMenus |
	pancakeHouseMenu := Menu name: 'Pancake House Menu' description: 'Breakfast'.
	dinerMenu := Menu name: 'Diner Menu' description: 'Lunch'.
	cafeMenu := Menu name: 'Cafe Menu' description: 'Dinner'.
	dessertMenu := Menu name: 'Dessert Menu' description: 'Dessert'.
	
	allMenus := Menu name: 'All Menu' description: 'All'.
	allMenus add: pancakeHouseMenu.
	allMenus add: dinerMenu.
	allMenus add: cafeMenu.
	
	dinerMenu add: (MenuItem name: 'Pasta' description: 'Good Pasta' price: 3.89).
	dinerMenu add: dessertMenu.
	
	dessertMenu add: (MenuItem name: 'Apple pie' description: 'Good Pie' price: 1.59).
	
	self assert: allMenus print equals: 
'- All Menu, All
- Pancake House Menu, Breakfast
- Diner Menu, Lunch
-- Pasta, Good Pasta, 3.89
- Dessert Menu, Dessert
-- Apple pie, Good Pie, 1.59
- Cafe Menu, Dinner
'
]

Class {
	#name : #LengthOrderListPrinter,
	#superclass : #ListPrinter,
	#instVars : [
		'comparator'
	],
	#category : #'Q053-Factory-Method'
}

{ #category : #accessing }
LengthOrderListPrinter >> createComparator [

	^ LengthOrderComparator new
]

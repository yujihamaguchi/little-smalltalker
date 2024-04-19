Class {
	#name : #DictionaryOrderListPrinter,
	#superclass : #ListPrinter,
	#instVars : [
		'comparator'
	],
	#category : #'Q053-Factory-Method'
}

{ #category : #accessing }
DictionaryOrderListPrinter >> createComparator [

	^ DictionaryOrderComparator new
]

Class {
	#name : #Product,
	#superclass : #Object,
	#category : #'Q055-Abstruct-Factory'
}

{ #category : #accessing }
Product >> style [

	^ self subclassResponsibility 
]

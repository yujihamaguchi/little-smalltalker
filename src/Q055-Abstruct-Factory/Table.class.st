Class {
	#name : #Table,
	#superclass : #Product,
	#category : #'Q055-Abstruct-Factory'
}

{ #category : #'as yet unclassified' }
Table >> stand [

	^ 'stand on the ', self style, ' table'
]

{ #category : #accessing }
Table >> style [

	^ self subclassResponsibility 
]

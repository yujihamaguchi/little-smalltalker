Class {
	#name : #Bench,
	#superclass : #Product,
	#category : #'Q055-Abstruct-Factory'
}

{ #category : #'as yet unclassified' }
Bench >> lie [

	^ 'lie on the ', self style, ' bench'
]

{ #category : #accessing }
Bench >> style [

	^ self subclassResponsibility 
]

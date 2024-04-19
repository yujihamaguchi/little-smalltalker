Class {
	#name : #Chair,
	#superclass : #Product,
	#category : #'Q055-Abstruct-Factory'
}

{ #category : #'as yet unclassified' }
Chair >> sit [

	^ 'sit on the ', self style, ' chair'
]

{ #category : #accessing }
Chair >> style [

	^ self subclassResponsibility 
]

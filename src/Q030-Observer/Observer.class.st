Class {
	#name : #Observer,
	#superclass : #Object,
	#category : #'Q030-Observer'
}

{ #category : #initialization }
Observer >> setSubject: aSubject [
	aSubject addObserver: self.
	^ self
]

{ #category : #updating }
Observer >> update: aSubject [
	^ self subclassResponsibility 
]

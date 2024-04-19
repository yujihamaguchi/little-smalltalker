Class {
	#name : #MyObserver,
	#superclass : #Object,
	#category : #'Q030-Observer'
}

{ #category : #accessing }
MyObserver class >> subject: aSubject [

	| observer |
	observer := self new.
	aSubject register: observer.
	^ observer
]

{ #category : #updating }
MyObserver >> update: aSubject [

	^ self subclassResponsibility
]

Class {
	#name : #MenuComponent,
	#superclass : #Object,
	#category : #'My-Example010-Composite'
}

{ #category : #adding }
MenuComponent >> add: aMenuComponent [
	^ self subclassResponsibility 
]

{ #category : #printing }
MenuComponent >> print [
	^ self subclassResponsibility 
]

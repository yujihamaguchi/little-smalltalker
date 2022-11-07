Class {
	#name : #MenuComponent,
	#superclass : #Object,
	#category : #'Q090-Composite'
}

{ #category : #adding }
MenuComponent >> add: aMenuComponent [
	^ self subclassResponsibility 
]

{ #category : #printing }
MenuComponent >> print [
	^ self subclassResponsibility 
]

{ #category : #removing }
MenuComponent >> remove: aComponent [
	^ self subclassResponsibility 
]

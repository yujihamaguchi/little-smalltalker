Class {
	#name : #State,
	#superclass : #Object,
	#category : #'Q100-State'
}

{ #category : #'as yet unclassified' }
State >> ejectCoin: aMachine [
	^ self subclassResponsibility 
]

{ #category : #'as yet unclassified' }
State >> insertCoin: aMachine [
	^ self subclassResponsibility 
]

{ #category : #accessing }
State >> turnCrank: aMachine [
	^ self subclassResponsibility 
]

Class {
	#name : #LoginOrRegisterCheckbox,
	#superclass : #Component,
	#category : #'Q140-Mediator'
}

{ #category : #checking }
LoginOrRegisterCheckbox >> check [

	dialog notify: self event: #check
]

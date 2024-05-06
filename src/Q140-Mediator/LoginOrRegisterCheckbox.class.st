Class {
	#name : 'LoginOrRegisterCheckbox',
	#superclass : 'Component',
	#instVars : [
		'checked'
	],
	#category : 'Q140-Mediator',
	#package : 'Q140-Mediator'
}

{ #category : 'checking' }
LoginOrRegisterCheckbox >> check [

	dialog notify: self event: #check.
	checked := true
]

{ #category : 'initialization' }
LoginOrRegisterCheckbox >> initialize [

	super initialize.
	checked := false.
	^ self
]

{ #category : 'testing' }
LoginOrRegisterCheckbox >> isChecked [

	^ checked
]

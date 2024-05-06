Class {
	#name : 'Component',
	#superclass : 'Object',
	#instVars : [
		'dialog',
		'enabled'
	],
	#category : 'Q140-Mediator',
	#package : 'Q140-Mediator'
}

{ #category : 'user interface' }
Component class >> dialog: aDialog [

	^ self new setDialog: aDialog
]

{ #category : 'protocol' }
Component >> disable [

	enabled := false
]

{ #category : 'protocol' }
Component >> enable [

	enabled := true
]

{ #category : 'initialization' }
Component >> initialize [

	super initialize.
	self disable.
	^ self
]

{ #category : 'testing' }
Component >> isDisabled [

	^ enabled not
]

{ #category : 'testing' }
Component >> isEnabled [

	^ enabled
]

{ #category : 'initialization' }
Component >> setDialog: aDialog [

	dialog := aDialog.
	^ self
]

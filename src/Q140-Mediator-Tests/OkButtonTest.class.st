Class {
	#name : 'OkButtonTest',
	#superclass : 'TestCase',
	#category : 'Q140-Mediator-Tests',
	#package : 'Q140-Mediator-Tests'
}

{ #category : 'tests' }
OkButtonTest >> testClickWhenLogin [

	| dialog target |
	"Arrange"
	dialog := Mock new.
	target := OkButton dialog: dialog.
	(dialog stub notify: target event: #check) willReturnYourself.

	"Act"
	target click.

	"Assert"
	dialog should receive notify: target event: #click
]

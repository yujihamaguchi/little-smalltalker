Class {
	#name : #LoginOrRegisterCheckboxTest,
	#superclass : #TestCase,
	#category : #'Q140-Mediator-Tests'
}

{ #category : #tests }
LoginOrRegisterCheckboxTest >> testCheck [

	| dialog target |
	"Arrange"
	dialog := Mock new.
	target := LoginOrRegisterCheckbox dialog: dialog.
	(dialog stub notify: target event: #check) willReturnYourself.
		
	"Act"
	target check.

	"Assert"
	dialog should receive notify: target event: #check

]

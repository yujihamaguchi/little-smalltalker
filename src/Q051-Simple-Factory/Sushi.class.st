Class {
	#name : #Sushi,
	#superclass : #Object,
	#instVars : [
		'name'
	],
	#category : #'Q051-Simple-Factory'
}

{ #category : #accessing }
Sushi >> box [
	^'boxing sushi...'
]

{ #category : #accessing }
Sushi >> name [
	^name
]

{ #category : #decoration }
Sushi >> prepare [
	^'preparing sushi...'
]

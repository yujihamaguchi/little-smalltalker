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
	Transcript show: 'boxed!!!'.
	^ self
]

{ #category : #accessing }
Sushi >> name [
	^ name
]

{ #category : #decoration }
Sushi >> prepare [
	Transcript show: 'prepared!!!'.
	^ self
]

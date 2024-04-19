Class {
	#name : #Sushi,
	#superclass : #Object,
	#instVars : [
		'boxed',
		'prepared'
	],
	#category : #'Q052-Simple-Factory'
}

{ #category : #accessing }
Sushi >> box [

	boxed := true.
	^ self
]

{ #category : #initialization }
Sushi >> initialize [

	prepared := false.
	boxed := false.
	^ self
]

{ #category : #testing }
Sushi >> isBoxed [

	^ boxed 
]

{ #category : #testing }
Sushi >> isPrepared [

	^ prepared 
]

{ #category : #decoration }
Sushi >> prepare [
	prepared := true.
	^ self
]

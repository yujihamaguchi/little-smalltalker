Class {
	#name : #Device,
	#superclass : #Object,
	#instVars : [
		'enabled',
		'volume'
	],
	#category : #'Q120-Bridge'
}

{ #category : #accessing }
Device >> disable [

	enabled := false
]

{ #category : #accessing }
Device >> enable [
	enabled := true
]

{ #category : #initialization }
Device >> initialize [

	enabled := false
]

{ #category : #accessing }
Device >> isEnabled [

	^ enabled
]

{ #category : #accessing }
Device >> volume [

	^ volume
]

{ #category : #accessing }
Device >> volume: anInteger [

	volume := anInteger
]

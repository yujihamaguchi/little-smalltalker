Class {
	#name : 'CarManualBuilder',
	#superclass : 'Object',
	#instVars : [
		'manual'
	],
	#category : 'Q170-Builder',
	#package : 'Q170-Builder'
}

{ #category : 'initialization' }
CarManualBuilder >> initialize [

	super initialize.
	manual := MyCarManual new.
	^ self
]

{ #category : 'as yet unclassified' }
CarManualBuilder >> manual [

	^ manual
]

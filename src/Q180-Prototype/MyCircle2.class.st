Class {
	#name : 'MyCircle2',
	#superclass : 'MyShape',
	#instVars : [
		'x',
		'y',
		'radius'
	],
	#category : 'Q180-Prototype',
	#package : 'Q180-Prototype'
}

{ #category : 'as yet unclassified' }
MyCircle2 >> myClone [

	^ MyCircle2 source: self 
]

{ #category : 'as yet unclassified' }
MyCircle2 >> x: xNumber y: yNumber radius: radiusNumber [

	x := xNumber.
	y := yNumber.
	radius := radiusNumber
]

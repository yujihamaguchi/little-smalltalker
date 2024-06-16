Class {
	#name : 'MyRectangle2',
	#superclass : 'MyShape',
	#instVars : [
		'width',
		'height'
	],
	#category : 'Q180-Prototype',
	#package : 'Q180-Prototype'
}

{ #category : 'instance creation' }
MyRectangle2 >> width: widthNumber height: heightNumber [

	width := widthNumber .
	height := heightNumber 
]

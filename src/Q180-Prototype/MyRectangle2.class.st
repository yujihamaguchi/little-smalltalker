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

{ #category : 'accessing' }
MyRectangle2 class >> source: aRectangle [

	| rectangle |
	rectangle := self width: aRectangle width height: aRectangle height.
	rectangle color: aRectangle color.
	^ rectangle
]

{ #category : 'instance creation' }
MyRectangle2 class >> width: aWidthNumber height: aHeightNumber [

	^ self new setWidth: aWidthNumber height: aHeightNumber
]

{ #category : 'comparing' }
MyRectangle2 >> = aRectangle [

	^ self width = aRectangle width and:
		  (self height = aRectangle height and:
			   self color = aRectangle color)
]

{ #category : 'accessing' }
MyRectangle2 >> height [

	^ height
]

{ #category : 'as yet unclassified' }
MyRectangle2 >> myClone [

	^ self class source: self
]

{ #category : 'instance creation' }
MyRectangle2 >> setWidth: aWidthNumber height: aHeightNumber [

	width := aWidthNumber.
	height := aHeightNumber.
	^ self
]

{ #category : 'accessing' }
MyRectangle2 >> width [

	^ width
]

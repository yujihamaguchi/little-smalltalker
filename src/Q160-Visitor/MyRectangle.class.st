Class {
	#name : 'MyRectangle',
	#superclass : 'MyElement',
	#category : 'Q160-Visitor',
	#package : 'Q160-Visitor'
}

{ #category : 'visiting' }
MyRectangle >> accept: aVisitor [

	^ aVisitor visitForRectangle: self
]

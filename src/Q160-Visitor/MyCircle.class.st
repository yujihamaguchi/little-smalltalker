Class {
	#name : 'MyCircle',
	#superclass : 'MyElement',
	#category : 'Q160-Visitor',
	#package : 'Q160-Visitor'
}

{ #category : 'visiting' }
MyCircle >> accept: aVisitor [

	^ aVisitor visitForCircle: self
]

Class {
	#name : 'MyDot',
	#superclass : 'MyElement',
	#category : 'Q160-Visitor',
	#package : 'Q160-Visitor'
}

{ #category : 'visiting' }
MyDot >> accept: aVisitor [

	^ aVisitor visitForDot: self
]

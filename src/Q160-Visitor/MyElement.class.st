Class {
	#name : 'MyElement',
	#superclass : 'Object',
	#category : 'Q160-Visitor',
	#package : 'Q160-Visitor'
}

{ #category : 'visiting' }
MyElement >> accept: aVisitor [

	^ self subclassResponsibility 
]

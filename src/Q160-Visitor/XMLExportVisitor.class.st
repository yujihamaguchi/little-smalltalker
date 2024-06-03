Class {
	#name : 'XMLExportVisitor',
	#superclass : 'Object',
	#category : 'Q160-Visitor',
	#package : 'Q160-Visitor'
}

{ #category : 'visiting' }
XMLExportVisitor >> visitForCircle: aCircle [

	^ 'XMLed circle'

]

{ #category : 'visiting' }
XMLExportVisitor >> visitForDot: aDot [

	^ 'XMLed dot'

]

{ #category : 'visiting' }
XMLExportVisitor >> visitForRectangle: aRectangle [

	^ 'XMLed rectangle'

]

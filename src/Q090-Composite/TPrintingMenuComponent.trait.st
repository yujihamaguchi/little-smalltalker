Trait {
	#name : #TPrintingMenuComponent,
	#category : #'Q090-Composite'
}

{ #category : #printing }
TPrintingMenuComponent >> asPrintingString: aDepthNumber [

	^ self explicitRequirement
]

{ #category : #'editing keys' }
TPrintingMenuComponent >> indentStringFor: aDepthNumber [

	^ ' ' repeat: aDepthNumber * 2 
]

{ #category : #printing }
TPrintingMenuComponent >> titleForPrinting: aDepthNumber [

	^ self explicitRequirement
]

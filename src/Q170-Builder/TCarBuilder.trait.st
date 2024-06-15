Trait {
	#name : 'TCarBuilder',
	#category : 'Q170-Builder',
	#package : 'Q170-Builder'
}

{ #category : 'initialization' }
TCarBuilder >> setEngine [

	^ self explicitRequirement 
]

{ #category : 'initialization' }
TCarBuilder >> setSeats [

	^ self explicitRequirement 
]

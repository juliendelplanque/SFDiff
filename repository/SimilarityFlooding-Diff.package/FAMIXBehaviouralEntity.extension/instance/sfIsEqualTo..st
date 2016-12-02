*SimilarityFlooding-Diff
sfIsEqualTo: anotherFAMIXNamedEntity
	^ (super sfIsEqualTo: anotherFAMIXNamedEntity)
		and: [ self signature = anotherFAMIXNamedEntity signature ]
*SimilarityFlooding-Diff
sfIsEqualTo: anotherFAMIXNamedEntity
	^ self class = anotherFAMIXNamedEntity class
		and: [ self name = anotherFAMIXNamedEntity name ]
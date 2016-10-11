comparing
= anotherFADSimilarityComputer
	^ (anotherFADSimilarityComputer isKindOf: self class) and: [ 
		anotherFADSimilarityComputer entityAccepted = self entityAccepted ]
*FamixAbstractDiff
isEqualTo: anotherFAMIXNamedEntity
	^ (super isEqualTo: anotherFAMIXNamedEntity)
		and: [ self signature = anotherFAMIXNamedEntity signature ]
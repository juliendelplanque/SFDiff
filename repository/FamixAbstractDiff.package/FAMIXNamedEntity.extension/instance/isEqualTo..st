*FamixAbstractDiff
isEqualTo: anotherFAMIXNamedEntity
	^ self famixClass = anotherFAMIXNamedEntity famixClass
		and: [ self name = anotherFAMIXNamedEntity name ]
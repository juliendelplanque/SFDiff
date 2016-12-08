diffing
generateAddChanges
	|changesWithoutRemovals|
	changesWithoutRemovals := self changes reject: #isRemoval.
	(self targetModel allWithSubTypesOf: FAMIXNamedEntity)
		select: [ :e |
			e isStub not and: [ 
				changesWithoutRemovals noneSatisfy: [ :change | change targetEntity = e ] ] ]
		thenDo: [ :e | self changes add: (FamixAddChange new entity: e; yourself) ]
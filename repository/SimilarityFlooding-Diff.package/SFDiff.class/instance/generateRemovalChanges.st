diffing
generateRemovalChanges
	(self baseModel allWithSubTypesOf: FAMIXNamedEntity)
		select: [ :e | 
			e isStub not and: [ 
				self changes noneSatisfy: [ :change | change baseEntity = e ] ] ]
		thenDo: [ :e | self changes add: (FamixRemovalChange new entity: e; yourself) ]
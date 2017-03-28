change generation
generateRemovalChanges
	(self baseModel allWithSubTypesOf: FAMIXNamedEntity) entities
		select: [ :e | 
			e isStub not and: [ 
				self changes noneSatisfy: [ :change | change isMatch and: [ (change entity versionIn: self baseModel) = (e versionIn: self baseModel) ] ] ] ]
		thenDo: [ :e | self changes add: (FamixRemovalChange new entity: e; yourself) ]
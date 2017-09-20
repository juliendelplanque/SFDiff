change generation
generateAddChanges
	(self targetModel allWithSubTypesOf: FAMIXNamedEntity)
		select: [ :e |
			e isStub not and: [ 
				self changes noneSatisfy: [ :change | change isMatch and: [ (change targetEntity versionIn: self targetModel) = (e versionIn: self targetModel) ] ] ] ]
		thenDo: [ :e | self changes add: (FamixAddChange new entity: (e versionIn: self targetModel); yourself) ]
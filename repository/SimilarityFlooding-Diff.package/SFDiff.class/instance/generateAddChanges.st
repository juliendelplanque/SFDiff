change generation
generateAddChanges
	(self targetModel allWithSubTypesOf: FAMIXNamedEntity)
		select: [ :e |
			e isStub not and: [ 
				self changes noneSatisfy: [ :change | change isMatch and: [ change targetEntity = e ] ] ] ]
		thenDo: [ :e | self changes add: (FamixAddChange new entity: e; yourself) ]
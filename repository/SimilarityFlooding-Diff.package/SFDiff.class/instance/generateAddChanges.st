diffing
generateAddChanges
	((self targetModel allWithSubTypesOf: FAMIXNamedEntity)
		select: [ :e | 
			(self changes reject: #isRemoval) noneSatisfy: [ :change | change targetEntity = e ] ])
			do: [ :e | self changes add: (FamixAddChange new entity: e; yourself) ]
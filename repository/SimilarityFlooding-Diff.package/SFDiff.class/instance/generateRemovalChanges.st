diffing
generateRemovalChanges
	((self baseModel allWithSubTypesOf: FAMIXNamedEntity)
		select: [ :e | self changes noneSatisfy: [ :change | change baseEntity = e ] ])
			do: [ :e | self changes add: (FamixRemovalChange new entity: e; yourself) ]
helper
changesWithBaseEntityIncludedIn: aCollection
	^ self entitiesVersionChanges select: [ :change |
			(aCollection collect: [ :e | self entity: e in: self baseModel ])
				includes: (self entity: change baseEntity in: self baseModel) ]
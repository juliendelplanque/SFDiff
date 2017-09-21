helper
changesWithTargetEntityIncludedIn: aCollection
	^ self entitiesVersionChanges select: [ :change |
		(aCollection collect: [ :e | self entity: e in: self targetModel ])
			includes: (self entity: change targetEntity in: self targetModel) ]
helper
changesWithBaseEntityIncludedIn: aCollection
	^ self entitiesVersionChanges select: [ :change |
		aCollection includes: change baseEntity ].
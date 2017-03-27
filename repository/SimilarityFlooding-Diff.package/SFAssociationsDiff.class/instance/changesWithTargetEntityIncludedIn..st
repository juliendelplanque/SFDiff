helper
changesWithTargetEntityIncludedIn: aCollection
	^ self entitiesVersionChanges select: [ :change |
		aCollection includes: change targetEntity ].
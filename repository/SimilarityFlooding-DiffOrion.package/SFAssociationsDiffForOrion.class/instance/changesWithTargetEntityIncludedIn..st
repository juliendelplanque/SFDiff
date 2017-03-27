helper
changesWithTargetEntityIncludedIn: aCollection
	^ self entitiesVersionChanges select: [ :change |
		(aCollection collect: [ :e | e versionIn: self targetModel ])
			includes: (change targetEntity versionIn: self targetModel) ].
helper
changesWithBaseEntityIncludedIn: aCollection
	^ self entitiesVersionChanges select: [ :change |
			(aCollection collect: [ :e | e versionIn: self baseModel ])
				includes: (change baseEntity versionIn: self baseModel) ].
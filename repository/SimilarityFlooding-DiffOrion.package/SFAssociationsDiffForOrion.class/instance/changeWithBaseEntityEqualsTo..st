helper
changeWithBaseEntityEqualsTo: anEntity
	^ self entitiesVersionChanges detect: [ :change | 
		(change baseEntity versionIn: self baseModel) = (anEntity versionIn: self baseModel) ]
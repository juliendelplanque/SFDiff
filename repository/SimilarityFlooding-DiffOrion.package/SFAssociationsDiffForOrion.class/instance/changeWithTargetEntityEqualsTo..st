helper
changeWithTargetEntityEqualsTo: anEntity
	^ self entitiesVersionChanges detect: [ :change | 
			(change targetEntity versionIn: self targetModel) = (anEntity versionIn: self targetModel) ]
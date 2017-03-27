helper
changeWithBaseEntityEqualsTo: anEntity
	^ self entitiesVersionChanges detect: [ :change | change baseEntity = anEntity ].
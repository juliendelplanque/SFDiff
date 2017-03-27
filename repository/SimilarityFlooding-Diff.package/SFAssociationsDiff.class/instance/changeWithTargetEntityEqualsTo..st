helper
changeWithTargetEntityEqualsTo: anEntity
	^ self entitiesVersionChanges detect: [ :change | change targetEntity = anEntity ].
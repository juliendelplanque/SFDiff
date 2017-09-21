helper
changeWithTargetEntityEqualsTo: anEntity
	^ self entitiesVersionChanges detect: [ :change |
		(self entity: change targetEntity in: self targetModel) = (self entity: anEntity in: self targetModel) ].
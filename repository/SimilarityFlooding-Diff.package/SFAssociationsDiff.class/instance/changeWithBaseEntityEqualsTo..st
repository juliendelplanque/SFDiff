helper
changeWithBaseEntityEqualsTo: anEntity
	^ self entitiesVersionChanges detect: [ :change |
			(self entity: change baseEntity in: self baseModel) = (self entity: anEntity in: self baseModel) ].
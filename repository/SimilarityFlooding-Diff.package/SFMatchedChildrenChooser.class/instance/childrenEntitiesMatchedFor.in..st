helpers
childrenEntitiesMatchedFor: anEntity in: changeList
	| versionChanges |
	versionChanges := changeList select: #isVersion.
	^ (self childrenEntitiesOf: anEntity) select: [ :entity |
			versionChanges anySatisfy: [ :any |
				any baseEntity = entity or: [ any targetEntity = entity ] ]  ]
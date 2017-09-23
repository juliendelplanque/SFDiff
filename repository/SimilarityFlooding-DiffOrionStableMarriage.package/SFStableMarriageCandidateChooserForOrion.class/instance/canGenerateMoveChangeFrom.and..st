testing
canGenerateMoveChangeFrom: baseEntity and: targetEntity
	^ ((self areParentEntitiesEqualsFor: baseEntity and: targetEntity) not
			and: [ baseEntity name = targetEntity name ])
testing
canGenerateMoveFrom: match
	^ ((self areParentEntitiesEqualsFor: match baseEntity and: match targetEntity) not
			and: [ match baseEntity name = match targetEntity name ])
testing
canGenerateMoveChangeFrom: baseEntity and: targetEntity knowingNewMatches: newMatches
	^ ((self areParentEntitiesEqualsFor: baseEntity and: targetEntity knowingNewMatches: newMatches) not
			and: [ baseEntity name = targetEntity name ])
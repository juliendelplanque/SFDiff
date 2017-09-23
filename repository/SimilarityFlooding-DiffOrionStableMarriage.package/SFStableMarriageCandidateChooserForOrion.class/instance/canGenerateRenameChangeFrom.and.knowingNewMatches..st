testing
canGenerateRenameChangeFrom: baseEntity and: targetEntity knowingNewMatches: newMatches
	^ (baseEntity name ~= targetEntity name
			and: [ self areParentEntitiesEqualsFor: baseEntity and: targetEntity knowingNewMatches: newMatches ])
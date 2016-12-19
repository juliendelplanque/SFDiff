testing
canGenerateRenameFrom: match
	^ (match baseEntity name ~= match targetEntity name
			and: [ self areParentEntitiesEqualsFor: match baseEntity and: match targetEntity ])
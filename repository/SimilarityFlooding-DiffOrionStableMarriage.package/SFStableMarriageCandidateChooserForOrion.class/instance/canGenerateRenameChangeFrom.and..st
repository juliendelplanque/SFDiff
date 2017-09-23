testing
canGenerateRenameChangeFrom: baseEntity and: targetEntity
	^ (baseEntity name ~= targetEntity name
			and: [ self areParentEntitiesEqualsFor: baseEntity and: targetEntity ])
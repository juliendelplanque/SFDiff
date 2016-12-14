diffing
generateRenameChangeIfNeededFrom: match
	(match baseEntity name ~= match targetEntity name
		and: [ self areParentEntitiesEqualsFor: match baseEntity and: match targetEntity ])
			ifTrue: [
				self changes
					add: (FamixRenameChange new
								baseEntity: match baseEntity;
								targetEntity: match targetEntity;
								yourself) ]
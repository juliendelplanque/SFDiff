diffing
generateMoveChangeIfNeededFrom: match
	((self areParentEntitiesEqualsFor: match baseEntity and: match targetEntity) not
		and: [ match baseEntity name = match targetEntity name ])
				ifTrue: [ 
					self changes
						add: (FamixMoveChange new
									baseEntity: match baseEntity;
									targetEntity: match targetEntity;
									yourself) ] 
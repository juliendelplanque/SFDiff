diffing
generateMoveOrRenameChangeIfNeededFrom: match
	match baseEntity name = match targetEntity name
		ifFalse: [ 
			self changes
				add:
					(FamixRenameChange new
						baseEntity: match baseEntity;
						targetEntity: match targetEntity;
						yourself) ].
	(self areParentEntitiesEqualsFor: match baseEntity and: match targetEntity)
		ifFalse: [ 
			self changes
				add:
					(FamixMoveChange new
						baseEntity: match baseEntity;
						targetEntity: match targetEntity;
						yourself) ]
selecting
generateMoveOrRenameChangeFrom: match in: newMatches
	(self canGenerateMoveFrom: match knowingNewMatches: newMatches)
		ifTrue: [ newMatches
				add:
					(FamixMoveChange new
						baseEntity: (self baseEntityOf: match);
						targetEntity: (self targetEntityOf: match);
						yourself) ].
	(self canGenerateRenameFrom: match knowingNewMatches: newMatches)
		ifTrue: [ newMatches
				add:
					(FamixRenameChange new
						baseEntity: (self baseEntityOf: match);
						targetEntity: (self targetEntityOf: match);
						yourself) ]
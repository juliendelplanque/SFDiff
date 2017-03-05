diffing
buildChangesFrom: matchCandidates withKnownMatches: matches
	| filtered |
	filtered := matchCandidates reject: [ :match | match baseEntity class = MooseModel ].
	filtered :=  SFSameBaseAndTargetType filter: (SFNotStub filter: filtered).
	self
		generateMoveAndRenameChangesFromCandidates: filtered;
		generateRemovalChanges;
		generateAddChanges;
		generateAssociationChanges
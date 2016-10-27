diffing
buildChangesFrom: matchCandidates withKnownMatches: matches
	| filtered |
	self generateVersionChangesFrom: matches.
	filtered := matchCandidates reject: [ :match |
					match baseEntity class = MooseModel or: [ (matches includesKey: match baseEntity) or: [ matches includes: match targetEntity ] ] ].
	filtered :=  SFSameBaseAndTargetType filter: (SFNotStub filter: filtered).
	self
		generateMoveAndRenameChangesFromCandidates: filtered;
		generateRemovalChanges;
		generateAddChanges
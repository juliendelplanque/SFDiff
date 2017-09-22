diffing
buildChangesFrom: matchCandidates withKnownMatches: matches
	| filtered matchesAssoc |
	matchesAssoc := matches associations.
	self generateVersionChangesFrom: matches.
	filtered := matchCandidates reject: [ :match | 
		match baseEntity class = MooseModel or: [
			matchesAssoc anySatisfy: [ :any | 
				(self entity: any head in: self baseModel) = (self entity: match baseEntity in: self baseModel)
					or: [ (self entity: any tail in: self targetModel) = (self entity: match targetEntity in: self targetModel) ] ] ] ].
	filtered := SFSameBaseAndTargetType filter: (SFNotStub filter: filtered).
	self
		generateMoveAndRenameChangesFromCandidates: filtered knownMatches: matches;
		generateRemovalChanges;
		generateAddChanges;
		generateAssociationChanges
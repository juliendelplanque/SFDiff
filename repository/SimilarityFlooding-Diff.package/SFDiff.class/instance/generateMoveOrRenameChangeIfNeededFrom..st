change generation
generateMoveOrRenameChangeIfNeededFrom: match
	self
		generateMoveChangeIfNeededFrom: match;
		generateRenameChangeIfNeededFrom: match.
diffing
generateMoveOrRenameChangeIfNeededFrom: match
	self flag: #todo. "This should be reworked..."
	self
		generateMoveChangeIfNeededFrom: match;
		generateRenameChangeIfNeededFrom: match.
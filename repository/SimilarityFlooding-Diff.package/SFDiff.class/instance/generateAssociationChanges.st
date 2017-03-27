change generation
generateAssociationChanges
	| matchChanges |
	matchChanges := self changes select: #isMatch.	
	self changes
		addAll: (self associationDiffClass baseModel: self baseModel targetModel: self targetModel entitiesVersionChanges: matchChanges)
change generation
generateAssociationChanges
	| matchChanges baseAssociations targetAssociations |
	matchChanges := self changes select: #isMatch.
	baseAssociations := (self baseModel allWithSubTypesOf: FAMIXAssociation) entities.
	targetAssociations := (self targetModel allWithSubTypesOf: FAMIXAssociation) entities.
	
	self changes
		addAll: (SFAssociationsDiff baseAssociations: baseAssociations targetAssociations: targetAssociations entitiesVersionChanges: matchChanges)
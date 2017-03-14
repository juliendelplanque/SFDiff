diffing
baseAssociations: baseAssociations targetAssociations: targetAssociations entitiesVersionChanges: entitiesVersionChanges
	^ self new
			baseAssociations: baseAssociations;
			targetAssociations: targetAssociations;
			entitiesVersionChanges: entitiesVersionChanges;
			computeDiff;
			changes
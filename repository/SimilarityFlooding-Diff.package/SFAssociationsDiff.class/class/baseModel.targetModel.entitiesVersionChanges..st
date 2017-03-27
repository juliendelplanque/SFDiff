diffing
baseModel: baseModel targetModel: targetModel entitiesVersionChanges: entitiesVersionChanges
	^ self new
			baseModel: baseModel;
			targetModel: targetModel;
			entitiesVersionChanges: entitiesVersionChanges;
			computeDiff;
			changes
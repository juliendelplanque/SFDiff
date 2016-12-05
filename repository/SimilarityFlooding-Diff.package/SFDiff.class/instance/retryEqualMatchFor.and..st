diffing
retryEqualMatchFor: baseEntity and: targetEntity
	^ SFEqualEntitiesFinder new
			baseModel: self baseModel;
			targetModel: self targetModel;
			match: (self childrenEntitiesOf: baseEntity) with: (self childrenEntitiesOf: targetEntity);
			matchedEntities
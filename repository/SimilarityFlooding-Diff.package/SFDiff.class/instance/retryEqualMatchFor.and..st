diffing
retryEqualMatchFor: baseEntity and: targetEntity
	^ SFEqualEntitiesFinder new
			modelA: self baseModel;
			modelB: self targetModel;
			match: (self childrenEntitiesOf: baseEntity) with: (self childrenEntitiesOf: targetEntity);
			matchedEntities
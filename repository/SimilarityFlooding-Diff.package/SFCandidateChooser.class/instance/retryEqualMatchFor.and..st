helpers
retryEqualMatchFor: baseEntity and: targetEntity
	^ (SFEqualEntitiesFinder new
			match: (self childrenEntitiesOf: baseEntity) with: (self childrenEntitiesOf: targetEntity);
			matchedEntities) collect: [ :candidate |
				FamixVersionChange new
					baseEntity: candidate head;
					targetEntity: candidate tail;
					yourself ]
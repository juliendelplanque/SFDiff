helpers
retryEqualMatchFor: baseEntity and: targetEntity
	^ (SFEqualEntitiesFinderForOrion new
			baseModel: self sfDiff baseModel;
			targetModel: self sfDiff targetModel;
			matchChildrenOf: baseEntity withChildrenOf: targetEntity) associations collect: [ :candidate |
				FamixVersionChange new
					baseEntity: candidate head;
					targetEntity: candidate tail;
					yourself ]
helpers
retryEqualMatchFor: baseEntity and: targetEntity
	^ (SFEqualEntitiesFinderForOrion new
			baseModel: self sfDiff baseModel;
			targetModel: self sfDiff targetModel;
			matchChildrenOf: (self entity: baseEntity in: self sfDiff baseModel)
			withChildrenOf: (self entity: targetEntity in: self sfDiff targetModel)) associations collect: [ :candidate |
				FamixVersionChange new
					baseEntity: (self entity: candidate head in: self sfDiff baseModel);
					targetEntity: (self entity: candidate tail in: self sfDiff targetModel);
					yourself ]
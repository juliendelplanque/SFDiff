selecting
selectNoParentsOrMatchedParentsEntitiesIn: candidates withNewMatches: newMatches
	^ candidates select: [ :c |
			(self haveParentEntities: c baseEntity) not 
				or: [ (newMatches anySatisfy: [ :m | (self areParentEntitiesEqualsFor: m baseEntity and: c baseEntity)
																	and: [ (self areParentEntitiesEqualsFor: m targetEntity and: c targetEntity) ] ])
				or: [ (self sfDiff changes anySatisfy: [ :m | (self areParentEntitiesEqualsFor: m baseEntity and: c baseEntity)
																				and: [ (self areParentEntitiesEqualsFor: m targetEntity and: c targetEntity) ] ]) ] ] ]
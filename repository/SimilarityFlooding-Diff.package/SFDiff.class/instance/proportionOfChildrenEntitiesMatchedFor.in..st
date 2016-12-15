helpers
proportionOfChildrenEntitiesMatchedFor: anEntity in: matchings
	^ (self childrenEntitiesMatchedFor: anEntity in: matchings) size / (self childrenEntitiesOf: anEntity) size
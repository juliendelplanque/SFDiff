diffing
retryEqualMatchFor: baseEntity and: targetEntity
	| finder newMatches |
	finder := SFEqualEntitiesFinder new
					modelA: self baseModel;
					modelB: self targetModel;
					yourself.
	newMatches := finder
						match: (finder namedEntitiesOfModelA select: [ :e | e parentEntity = baseEntity ]) 
						with: (finder namedEntitiesOfModelB select: [:e | e parentEntity = targetEntity ]);
						matchedEntities.
	^ newMatches
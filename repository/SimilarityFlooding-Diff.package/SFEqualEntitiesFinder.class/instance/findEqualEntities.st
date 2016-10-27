finding
findEqualEntities
	matchedEntities := Dictionary new.
	self
		match: (self namedEntitiesOfModelA select: [ :e | e parentEntities isEmpty ]) entities
		with: (self namedEntitiesOfModelB select: [ :e | e parentEntities isEmpty ]) entities.
	^ matchedEntities asDictionary
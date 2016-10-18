finding
findEqualEntities
	matchedEntities := OrderedCollection new.
	self
		match: (self namedEntitiesOfModelA select: [ :e | e belongsTo isNil ]) entities
		with: (self namedEntitiesOfModelB select: [ :e | e belongsTo isNil ]) entities.
	^ matchedEntities
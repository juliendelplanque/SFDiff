finding
findEqualEntities
	matchedEntities := Dictionary new.
	self
		match: (self namedEntitiesOfModelA reject: [ :e | self haveParentEntities: e ])
		with: (self namedEntitiesOfModelB reject: [ :e | self haveParentEntities: e ]).
	^ matchedEntities asDictionary
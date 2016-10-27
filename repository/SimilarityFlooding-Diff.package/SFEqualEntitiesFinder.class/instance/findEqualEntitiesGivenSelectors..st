finding
findEqualEntitiesGivenSelectors: selectors
	matchedEntities := Dictionary new.
	self
		match: (self namedEntitiesOfModelA select: [ :e | (selectors first value: e) isNil ]) entities
		with: (self namedEntitiesOfModelB select: [ :e | (selectors first value: e) isNil ]) entities
		givenSelectors: selectors allButFirst.
	^ matchedEntities asDictionary
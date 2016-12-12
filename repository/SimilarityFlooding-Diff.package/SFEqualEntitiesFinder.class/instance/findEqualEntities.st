finding
findEqualEntities
	matchedEntities := Dictionary new.
	self
		match: (self namedEntitiesOfModelA reject: [ :e |
					e privateState attributeAt: #sfMarked put: false. "Reset the private state at the same time as rejecting entities with parents."
					self haveParentEntities: e ]) entities
		with: (self namedEntitiesOfModelB reject: [ :e |
					e privateState attributeAt: #sfMarked put: false. "Reset the private state at the same time as rejecting entities with parents."
					self haveParentEntities: e ]) entities.
	^ matchedEntities asDictionary
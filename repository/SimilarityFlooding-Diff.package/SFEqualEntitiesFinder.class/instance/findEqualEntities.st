finding
findEqualEntities
	matchedEntities := Dictionary new.
	self
		match: (self namedEntitiesOfModelA reject: [ :e |
					(self entity: e in: self baseModel) privateState attributeAt: #sfMarked put: false. "Reset the private state at the same time as rejecting entities with parents."
					self haveParentEntities: (self entity: e in: self baseModel) ]) entities
		with: (self namedEntitiesOfModelB reject: [ :e |
					(self entity: e in: self targetModel) privateState attributeAt: #sfMarked put: false. "Reset the private state at the same time as rejecting entities with parents."
					self haveParentEntities: (self entity: e in: self targetModel) ]) entities.
	^ matchedEntities asDictionary
finding
findEqualEntities
	matchedEntities := Dictionary new.
	self
		match: (self namedEntitiesOfModelA reject: [ :e |
					(e versionIn: self baseModel) privateState attributeAt: #sfMarked put: false. "Reset the private state at the same time as rejecting entities with parents."
					self haveParentEntities: (e versionIn: self baseModel) ]) entities
		with: (self namedEntitiesOfModelB reject: [ :e |
					(e versionIn: self targetModel) privateState attributeAt: #sfMarked put: false. "Reset the private state at the same time as rejecting entities with parents."
					self haveParentEntities: (e versionIn: self targetModel) ]) entities.
	^ matchedEntities asDictionary
building
recursiveBuildFromModel: aMooseModel
	self
		recursiveBuildFromModelEntities: (aMooseModel entities select: [ :e | (e isKindOf: FAMIXNamedEntity) and: [ self haveParentEntities: e ] ])
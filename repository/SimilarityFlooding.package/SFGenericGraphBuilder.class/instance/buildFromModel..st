building
buildFromModel: aMooseModel
	buildStack := Stack new.
	self
		recursiveBuildFromModel: aMooseModel;
		addEdgeDerivedFromAssociationsOfModel: aMooseModel
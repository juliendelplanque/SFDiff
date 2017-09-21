building
buildFromModel: aMooseModel
	super buildFromModel: aMooseModel.
	buildStack := Stack new.
	self
		recursiveBuildFromModel: aMooseModel;
		addEdgeDerivedFromAssociationsOfModel: aMooseModel
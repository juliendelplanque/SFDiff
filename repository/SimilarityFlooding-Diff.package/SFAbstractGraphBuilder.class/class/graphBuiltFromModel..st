graph building
graphBuiltFromModel: aMooseModel
	^ self new
		buildFromModel: aMooseModel;
		graph
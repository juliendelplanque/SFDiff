graph building
graphBuiltFromModel: aMooseModel
	^ SFGraphBuilder new
		buildFromModel: aMooseModel;
		graph
graph building
graphBuiltFromModel: aMooseModel graphClass: aClass
	^ self new
		graphClass: aClass;
		buildFromModel: aMooseModel;
		graph
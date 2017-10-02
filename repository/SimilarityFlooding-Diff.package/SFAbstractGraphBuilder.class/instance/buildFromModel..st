building
buildFromModel: aMooseModel
	self model: aMooseModel.
	graph := self graphClass new.
	self graph model: aMooseModel
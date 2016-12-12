models
matrixtoolkitCommit2Model
	^ matrixtoolkitCommit2Model ifNil: [ matrixtoolkitCommit2Model := self loadModelFromFile: self mseDirectory / 'matrixtoolkit.commit2.mse' ]
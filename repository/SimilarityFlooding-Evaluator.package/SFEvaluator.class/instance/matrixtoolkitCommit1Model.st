models
matrixtoolkitCommit1Model
	^ matrixtoolkitCommit1Model ifNil: [ matrixtoolkitCommit1Model := self loadModelFromFile: self mseDirectory / 'matrixtoolkit.commit1.mse' ]
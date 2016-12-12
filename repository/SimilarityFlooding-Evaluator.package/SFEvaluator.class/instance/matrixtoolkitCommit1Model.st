models
matrixtoolkitCommit1Model
	"Model corresponding to the commit with the hash: '30125f0a061e8211c3b6b159bfee3b4fcdd2f1b3'"
	^ matrixtoolkitCommit1Model ifNil: [ matrixtoolkitCommit1Model := self loadModelFromFile: self mseDirectory / 'matrixtoolkit.commit1.mse' ]
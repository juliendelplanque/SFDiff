models
smaCCCommit1Model
	"Model corresponding to the commit with the hash: 'f305fafd2dd09d3600010f53e68f0a41ba282750'"
	^ smaCCCommit1Model ifNil: [ smaCCCommit1Model := self loadModelFromFile: self mseDirectory / 'smacc.commit1.mse' ]
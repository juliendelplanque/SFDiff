models
verveineCommit1Model
	"Model corresponding to the commit with the hash: '40c9739f7bc39bc66b74a8d2ead95810fba6a9ac'"
	^ verveineCommit1Model ifNil: [ verveineCommit1Model := self loadModelFromFile: self mseDirectory / 'verveine.commit1.mse' ]
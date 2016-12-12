models
verveineCommit2Model
	"Model corresponding to the commit with the hash: 'a10eef01c08553074f6fa0527ba6fb0257c5b76e'"
	^ verveineCommit2Model ifNil: [ verveineCommit2Model := self loadModelFromFile: self mseDirectory / 'verveine.commit2.mse' ]
models
smaCCCommit2Model
	"Model corresponding to the commit with the hash: '49e219a5dcda4b4b814bed8b392d311e71185897'"
	^ smaCCCommit2Model ifNil: [ smaCCCommit2Model := self loadModelFromFile: self mseDirectory / 'smacc.commit2.mse' ]
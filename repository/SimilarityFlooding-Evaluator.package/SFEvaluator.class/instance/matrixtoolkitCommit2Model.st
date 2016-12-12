models
matrixtoolkitCommit2Model
	"Model corresponding to the commit with the hash: '8fb883d9565f82edecbf8b73c6faad55ff27fcd5'"
	^ matrixtoolkitCommit2Model ifNil: [ matrixtoolkitCommit2Model := self loadModelFromFile: self mseDirectory / 'matrixtoolkit.commit2.mse' ]
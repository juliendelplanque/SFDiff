models
libnotifyBindingCommit2Model
	"Model corresponding to the commit with the hash: '84dfc7de06a2c3acb932b1a812c33553ff812297'"
	^ libnotifyBindingCommit2Model ifNil: [ libnotifyBindingCommit2Model := self loadModelFromFile: self mseDirectory / 'libnotifybinding.commit2.mse' ]
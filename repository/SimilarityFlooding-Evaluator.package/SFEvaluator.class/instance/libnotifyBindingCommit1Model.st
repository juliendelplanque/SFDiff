models
libnotifyBindingCommit1Model
	"Model corresponding to the commit with the hash: '22c41b0e954a9215459c69af67c7242255a8362d'"
		^ libnotifyBindingCommit1Model ifNil: [ libnotifyBindingCommit1Model := self loadModelFromFile: self mseDirectory / 'libnotifybinding.commit1.mse' ]
models
renoirStV160Model
	^ renoirStV160Model ifNil: [ renoirStV160Model := self loadModelFromFile: self mseDirectory / 'renoirst.1.6.0.mse' ]
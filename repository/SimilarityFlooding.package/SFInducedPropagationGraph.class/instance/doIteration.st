computation
doIteration
	| newSigmaValues maxSigma |
	"Compute new sigma values for each node."
	newSigmaValues := Dictionary new.
	self nodes do: [ :node |
		newSigmaValues at: node put: (self sigmaValueBlock value: node value: self) ]  displayingProgress: 'SF doing an iteration'.
	
	"Normalize new sigmas."
	maxSigma := newSigmaValues values max.
	newSigmaValues keysAndValuesDo: [ :node :sigma |
		newSigmaValues at: node put: sigma / maxSigma ].
	self
		delta: (self computeDeltaWithOldSigmas: self sigmaValues newSigmas: newSigmaValues);
		sigmaValues: newSigmaValues
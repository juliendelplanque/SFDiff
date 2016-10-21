computation
doIteration
	| newSigmaValues maxSigma |
	"Compute new sigma values for each node."
	newSigmaValues := Dictionary new.
	self nodes do: [ :node |
		newSigmaValues at: node put: (sigmaValueBlock value: node value: self) ].
	
	"Normalize new sigmas."
	maxSigma := newSigmaValues values max.
	newSigmaValues keysAndValuesDo: [ :node :sigma |
		newSigmaValues at: node put: sigma / maxSigma ].
	self
		delta: (self computeDeltaWithOldSigmas: self sigmaValues newSigmas: newSigmaValues);
		sigmaValues: newSigmaValues
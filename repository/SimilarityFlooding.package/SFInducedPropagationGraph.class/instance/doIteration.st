computation
doIteration
	| newSigmaValues maxSigma |
	"Compute new sigma values for each node."
	newSigmaValues := Dictionary new.
	self nodes do: [ :node |
		|sigma|
		sigma := (self neighbourhoodOf: node)
						inject: (self sigmaValueOf: node)
						into: [ :sum :currentEdge |
							sum + ((self sigmaValueOf: currentEdge from) * currentEdge weight) ].
		newSigmaValues at: node put: sigma ].
	"Normalize new sigmas."
	maxSigma := newSigmaValues values max.
	newSigmaValues keysAndValuesDo: [ :node :sigma |
		newSigmaValues at: node put: sigma / maxSigma ].
	self
		delta: (self computeDeltaWithOldSigmas: self sigmaValues newSigmas: newSigmaValues);
		sigmaValues: newSigmaValues
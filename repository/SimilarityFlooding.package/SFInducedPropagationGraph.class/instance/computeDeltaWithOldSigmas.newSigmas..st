computation
computeDeltaWithOldSigmas: oldSigmaValues newSigmas: newSigmaValues
	"Compute the euclidean distance between old sigmas and new sigmas."
	| sum |
	sum := 0.
	oldSigmaValues keysAndValuesDo: [ :node :oldSigma |
		sum := sum + ((oldSigma - (newSigmaValues at: node)) ** 2) ].
	^ sum sqrt
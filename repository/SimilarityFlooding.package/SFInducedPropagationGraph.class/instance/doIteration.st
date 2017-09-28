computation
doIteration
	| newSigmaValues maxSigma |
	"Compute new sigma values for each node."
	newSigmaValues := Dictionary new.
	self edges do: [ :edge |
		newSigmaValues
			at: edge from
			put: (self sigmaValueTransmissionBlock valueWithArguments: {
						(newSigmaValues at: edge from ifAbsentPut: [ self initialSigmaValueBlock value: edge from value: self ]).
						edge to.
						edge from.
						edge toFromWeight.
						self });
			at: edge to
			put: (self sigmaValueTransmissionBlock valueWithArguments: {
						(newSigmaValues at: edge to ifAbsentPut: [ self initialSigmaValueBlock value: edge to value: self ]).
						edge from.
						edge to.
						edge fromToWeight.
						self }) ].
	
	"Normalize new sigmas."
	maxSigma := newSigmaValues values max.
	newSigmaValues keysAndValuesDo: [ :node :sigma |
		newSigmaValues at: node put: sigma / maxSigma ].
	self
		delta: (self computeDeltaWithOldSigmas: self sigmaValues newSigmas: newSigmaValues);
		sigmaValues: newSigmaValues
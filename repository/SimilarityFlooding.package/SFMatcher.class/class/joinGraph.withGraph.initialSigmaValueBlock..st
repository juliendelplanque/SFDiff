joining
joinGraph: aSFNamedGraph withGraph: anotherSFNamedGraph initialSigmaValueBlock: aBlock
	^ self
		joinGraph: aSFNamedGraph
		withGraph: anotherSFNamedGraph
		initialSigmaValueBlock: aBlock
		configBlock: [ :propagationGraph |
			propagationGraph
				epsilon: 0.01;
				maximalIterationCount: 10;
				useBasicFormula ]
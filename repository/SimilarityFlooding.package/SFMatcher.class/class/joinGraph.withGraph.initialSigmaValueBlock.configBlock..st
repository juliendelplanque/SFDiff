joining
joinGraph: aSFNamedGraph withGraph: anotherSFNamedGraph initialSigmaValueBlock: aBlock configBlock: anotherBlock
	| pairwise propagation |
	'Build pairwise connectivity graph: ' logCr.
	[pairwise := aSFNamedGraph pairwiseConnectivityGraphWith: anotherSFNamedGraph] timeToRun logCr.

	'Build induced propagation graph: ' logCr.
	[propagation := pairwise asInducedPropagationGraph] timeToRun logCr.

	propagation
		initialSigmaValues: (aBlock value: propagation nodes).
	
	anotherBlock value: propagation.

	'Similarity flooding: ' logCr.
	[propagation similarityFlooding] timeToRun logCr.
	'Iteration count: ' logCr.
	propagation iterationCount logCr.
	^ propagation matchCandidates
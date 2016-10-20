joining
join: aMooseModel with: anotherMooseModel initialSigmaValueBlock: aBlock
	| visitor1 visitor2 pairwise propagation |
	'Build graph from models: ' logCr.
	[visitor1 := SFGraphBuilder new.
	visitor1 buildFromModel: aMooseModel.
	visitor2 := SFGraphBuilder new.
	visitor2 buildFromModel: anotherMooseModel.] timeToRun logCr.
	'Edge count for Graph 1: ' logCr.
	visitor1 graph edges size logCr.
	'Edge count for Graph 2: ' logCr.
	visitor2 graph edges size logCr.

	'Build pairwise connectivity graph: ' logCr.
	[pairwise := visitor1 graph pairwiseConnectivityGraphWith: visitor2 graph] timeToRun logCr.

	'Build induced propagation graph: ' logCr.
	[propagation := pairwise asInducedPropagationGraph] timeToRun logCr.

	propagation
		initialSigmaValues: (aBlock value: propagation nodes);
		epsilon: 0.01;
		maximalIterationCount: 10;
		useFormulaC.

	'Similarity flooding: ' logCr.
	[propagation similarityFlooding] timeToRun logCr.
	'Iteration count: ' logCr.
	propagation iterationCount logCr.
	^ propagation matchCandidates
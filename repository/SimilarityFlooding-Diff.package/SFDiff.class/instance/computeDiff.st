diffing
computeDiff
	| baseGraph targetGraph matches pairwise inducedPropagation |
	baseGraph := SFGraphBuilder graphBuiltFromModel:self baseModel.
	targetGraph := SFGraphBuilder graphBuiltFromModel: self targetModel.
	matches := SFEqualEntitiesFinder new
					modelA: self baseModel;
					modelB: self targetModel;
					findEqualEntities.
	pairwise := baseGraph pairwiseConnectivityGraphWith: targetGraph knowingMatches: matches.
	inducedPropagation := pairwise asInducedPropagationGraph.
	inducedPropagation
		initialSigmaValues: (inducedPropagation nodes collect: [ :node | node -> 1 ]) asDictionary;
		useFormulaC;
		similarityFlooding.
	self buildChangesFrom: inducedPropagation matchCandidates withKnownMatches: matches
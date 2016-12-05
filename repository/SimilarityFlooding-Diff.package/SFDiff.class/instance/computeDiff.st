diffing
computeDiff
	| baseGraph targetGraph matches pairwise inducedPropagation |
	baseGraph := SFGenericGraphBuilder graphBuiltFromModel:self baseModel.
	targetGraph := SFGenericGraphBuilder graphBuiltFromModel: self targetModel.
	matches := SFEqualEntitiesFinder new
					baseModel: self baseModel;
					targetModel: self targetModel;
					findEqualEntities.
	pairwise := baseGraph pairwiseConnectivityGraphWith: targetGraph knowingMatches: matches.
	inducedPropagation := pairwise asInducedPropagationGraph.
	inducedPropagation
		initialSigmaValues: (inducedPropagation nodes collect: [ :node | node -> 1 ]) asDictionary.
	self inducedPropagationGraphFormulaSelector value: inducedPropagation.
	inducedPropagation
		similarityFlooding.
	self buildChangesFrom: inducedPropagation matchCandidates withKnownMatches: matches
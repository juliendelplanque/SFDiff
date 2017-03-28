diffing
computeDiff
	| baseGraph targetGraph matches pairwise inducedPropagation |
	self baseModel prepareToDiff.
	self targetModel prepareToDiff.
	baseGraph := SFGenericGraphBuilder graphBuiltFromModel: self baseModel.
	targetGraph := SFGenericGraphBuilder graphBuiltFromModel: self targetModel.
	preprocessTime := [
		matches := self equalEntitiesFinder new
							baseModel: self baseModel;
							targetModel: self targetModel;
							findEqualEntities ] timeToRun.
	pairwiseTime := [ pairwise := baseGraph pairwiseConnectivityGraphWith: targetGraph knowingMatches: matches ] timeToRun.
	inducedPropagationTime := [ inducedPropagation := pairwise asInducedPropagationGraph ] timeToRun.
	inducedPropagation
		initialSigmaValues: (inducedPropagation nodes collect: [ :node | node -> 1 ]) asDictionary.
	self inducedPropagationGraphFormulaSelector value: inducedPropagation.
	sfTime := [ inducedPropagation similarityFlooding ] timeToRun.
	changeBuildingTime := [ self buildChangesFrom: inducedPropagation matchCandidates withKnownMatches: matches ] timeToRun
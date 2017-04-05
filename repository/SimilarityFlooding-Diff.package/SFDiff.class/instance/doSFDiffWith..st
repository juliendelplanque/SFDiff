diffing
doSFDiffWith: matches
	| baseGraph targetGraph pairwise inducedPropagation |
	baseGraph := self graphBuilder graphBuiltFromModel: self baseModel.
	targetGraph := self graphBuilder graphBuiltFromModel: self targetModel.
	pairwiseTime := [ pairwise := baseGraph pairwiseConnectivityGraphWith: targetGraph knowingMatches: matches ] timeToRun.
	inducedPropagationTime := [ inducedPropagation := pairwise asInducedPropagationGraph ] timeToRun.
	inducedPropagation
		initialSigmaValues: (inducedPropagation nodes collect: [ :node | node -> 1 ]) asDictionary.
	self inducedPropagationGraphFormulaSelector value: inducedPropagation.
	sfTime := [ inducedPropagation similarityFlooding ] timeToRun.
	^ inducedPropagation
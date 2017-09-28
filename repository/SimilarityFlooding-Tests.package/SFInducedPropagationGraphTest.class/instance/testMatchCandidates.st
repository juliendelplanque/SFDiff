tests-accessing-computed
testMatchCandidates
	| prop |
	prop := (self graphAFromPaper pairwiseConnectivityGraphWith: self graphBFromPaper) asInducedPropagationGraph.

	prop
		initialSigmaValues: (prop nodes collect: [ :edge | edge -> 1.0 ]) asDictionary;
		useBasicFormula;
		epsilon: 0.09.
	
	prop similarityFlooding.
	
	"Before calling #matchCandidates, all #sigmaValue are equal to 0."
	prop nodes do: [ :node | self assert: node sigmaValue equals: 0 ].
	
	prop matchCandidates.
	
	"After calling #matchCandidates, all #sigmaValue are set according to #sigmaValues dict."
	self assert: (prop nodes anySatisfy: [ :node | node sigmaValue ~= 0 ]).
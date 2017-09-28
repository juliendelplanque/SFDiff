tests-accessing
testInitialSigmaValueOf
	| prop |
	prop := (self graphAFromPaper pairwiseConnectivityGraphWith: self graphBFromPaper) asInducedPropagationGraph.

	prop
		initialSigmaValues: (prop nodes collect: [ :edge | edge -> 1.0 ]) asDictionary.
		
	prop nodes do: [ :node |
		self
			assert: (prop initialSigmaValueOf: node) equals: 1.0;
			assert: (prop sigmaValueOf: node) equals: 1.0 ]
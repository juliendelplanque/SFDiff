tests-computation
testDoIteration
	| prop |
	prop := (self graphAFromPaper pairwiseConnectivityGraphWith: self graphBFromPaper) asInducedPropagationGraph.

	prop
		initialSigmaValues: (prop nodes collect: [ :edge | edge -> 1.0 ]) asDictionary;
		useBasicFormula;
		epsilon: 0.09.
		
	prop doIteration.
	
	self
		assert: ((prop sigmaValueOf: (SFMatchCandidate base: 'a' target: 'b')) closeTo: 1.0 precision: 0.1);
		assert: ((prop sigmaValueOf: (SFMatchCandidate base: 'a1' target: 'b1')) closeTo: 0.5 precision: 0.1);
		assert: ((prop sigmaValueOf: (SFMatchCandidate base: 'a2' target: 'b1')) closeTo: 0.83 precision: 0.01);
		assert: ((prop sigmaValueOf: (SFMatchCandidate base: 'a1' target: 'b2')) closeTo: 0.66 precision: 0.01);
		assert: ((prop sigmaValueOf: (SFMatchCandidate base: 'a2' target: 'b2')) closeTo: 0.66 precision: 0.01);
		assert: ((prop sigmaValueOf: (SFMatchCandidate base: 'a1' target: 'b')) closeTo: 0.66 precision: 0.01)
tests-computation
testSimilarityFlooding
	| prop matchExpected candidates |
	prop := (self graphAFromPaper pairwiseConnectivityGraphWith: self graphBFromPaper) asInducedPropagationGraph.

	prop
		initialSigmaValues: (prop nodes collect: [ :edge | edge -> 1.0 ]) asDictionary;
		useBasicFormula;
		epsilon: 0.09.
	
	prop similarityFlooding.
	
	matchExpected := { 
		SFMatchCandidate base: 'a' target: 'b' sigmaValue: 1.0.
		SFMatchCandidate base: 'a2' target: 'b1' sigmaValue: 0.91.
		SFMatchCandidate base: 'a1' target: 'b2' sigmaValue: 0.69.
		SFMatchCandidate base: 'a1' target: 'b1' sigmaValue: 0.39.
		SFMatchCandidate base: 'a1' target: 'b' sigmaValue: 0.33.
		SFMatchCandidate base: 'a2' target: 'b2' sigmaValue: 0.33 }.
	
	candidates := prop matchCandidates.
	
	self assert: candidates size equals: 6.
	
	matchExpected do: [ :expected |
		self assert: (candidates anySatisfy: [ :c | 
			c baseEntity = expected baseEntity
				and: [ c targetEntity = expected targetEntity
					and: [ (c sigmaValue max: expected sigmaValue ) - (c sigmaValue min: expected sigmaValue) < 0.1 ] ] ]) ]
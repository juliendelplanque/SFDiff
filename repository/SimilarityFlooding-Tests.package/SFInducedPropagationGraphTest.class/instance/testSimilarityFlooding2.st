tests-computation
testSimilarityFlooding2
	| prop matchExpected candidates |
	prop := (self semiStructuredDataGraphB pairwiseConnectivityGraphWith: self semiStructuredDataGraphA) asInducedPropagationGraph.

	prop
		initialSigmaValues: (prop nodes collect: [ :edge | edge -> 1.0 ]) asDictionary;
		useBasicFormula;
		epsilon: 0.05.
	
	prop similarityFlooding.
	
	matchExpected := { 
		SFMatchCandidate base: '55' target: '4' sigmaValue: 1.0.
		SFMatchCandidate base: '61' target: '7' sigmaValue: 0.63.
		SFMatchCandidate base: '51' target: '1' sigmaValue: 0.48.
		SFMatchCandidate base: '56' target: '5' sigmaValue: 0.48.
		SFMatchCandidate base: '57' target: '6' sigmaValue: 0.48.
		SFMatchCandidate base: '62' target: '8' sigmaValue: 0.30.
		SFMatchCandidate base: '52' target: '7' sigmaValue: 0.07.
		SFMatchCandidate base: '58' target: '2' sigmaValue: 0.07.
		SFMatchCandidate base: '63' target: '9' sigmaValue: 0.07.
		SFMatchCandidate base: '53' target: '8' sigmaValue: 0.05.
		SFMatchCandidate base: '59' target: '3' sigmaValue: 0.05.
		SFMatchCandidate base: '60' target: '1' sigmaValue: 0.05.
		SFMatchCandidate base: '64' target: '10' sigmaValue: 0.05.
		SFMatchCandidate base: '51' target: '4' sigmaValue: 0.05.
		SFMatchCandidate base: '53' target: '8' sigmaValue: 0.05 }.
	
	candidates := prop matchCandidates.
	
	self assert: candidates size equals: 15.
	
	matchExpected do: [ :expected |
		self assert: (candidates anySatisfy: [ :c | 
			c baseEntity = expected baseEntity
				and: [ c targetEntity = expected targetEntity
					and: [ (c sigmaValue max: expected sigmaValue ) - (c sigmaValue min: expected sigmaValue) < 0.01 ] ] ]) ]
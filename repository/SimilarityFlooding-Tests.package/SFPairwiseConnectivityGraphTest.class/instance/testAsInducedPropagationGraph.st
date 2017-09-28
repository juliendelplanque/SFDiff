tests-converting
testAsInducedPropagationGraph
	| pairwise inducedPropagation expectedEdges |
	pairwise := self graphAFromPaper pairwiseConnectivityGraphWith: self graphBFromPaper.
	inducedPropagation := pairwise asInducedPropagationGraph.
	expectedEdges := { 
		(SFEdge from: (SFMatchCandidate base: 'a' target: 'b') to: (SFMatchCandidate base: 'a1' target: 'b1'))
			name: 'l1';
			fromToWeight: 0.5;
			toFromWeight: 1.0;
			yourself.
		(SFEdge from: (SFMatchCandidate base: 'a' target: 'b') to: (SFMatchCandidate base: 'a2' target: 'b1'))
			name: 'l1';
			fromToWeight: 0.5;
			toFromWeight: 1.0;
			yourself.
		(SFEdge from: (SFMatchCandidate base: 'a1' target: 'b2') to: (SFMatchCandidate base: 'a2' target: 'b1'))
			name: 'l2';
			fromToWeight: 1.0;
			toFromWeight: 1.0;
			yourself.
		(SFEdge from: (SFMatchCandidate base: 'a1' target: 'b') to: (SFMatchCandidate base: 'a2' target: 'b2'))
			name: 'l2';
			fromToWeight: 1.0;
			toFromWeight: 1.0;
			yourself }.
	self assertCollection: expectedEdges hasSameElements: inducedPropagation edges
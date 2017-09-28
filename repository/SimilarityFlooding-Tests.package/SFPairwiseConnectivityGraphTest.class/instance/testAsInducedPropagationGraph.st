tests-converting
testAsInducedPropagationGraph
	| pairwise inducedPropagation expectedEdges |
	pairwise := self graphAFromPaper pairwiseConnectivityGraphWith: self graphBFromPaper.
	inducedPropagation := pairwise asInducedPropagationGraph.
	expectedEdges := { 
		(SFEdge from: (SFNode base: 'a' target: 'b') to: (SFNode base: 'a1' target: 'b1'))
			name: 'l1';
			fromToWeight: 0.5;
			toFromWeight: 1.0;
			yourself.
		(SFEdge from: (SFNode base: 'a' target: 'b') to: (SFNode base: 'a2' target: 'b1'))
			name: 'l1';
			fromToWeight: 0.5;
			toFromWeight: 1.0;
			yourself.
		(SFEdge from: (SFNode base: 'a1' target: 'b2') to: (SFNode base: 'a2' target: 'b1'))
			name: 'l2';
			fromToWeight: 1.0;
			toFromWeight: 1.0;
			yourself.
		(SFEdge from: (SFNode base: 'a1' target: 'b') to: (SFNode base: 'a2' target: 'b2'))
			name: 'l2';
			fromToWeight: 1.0;
			toFromWeight: 1.0;
			yourself }.
	self assertCollection: expectedEdges hasSameElements: inducedPropagation edges
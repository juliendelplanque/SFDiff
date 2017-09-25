tests-converting
testAsInducedPropagationGraph
	| pairwise inducedPropagation expectedEdges |
	pairwise := self graphAFromPaper pairwiseConnectivityGraphWith: self graphBFromPaper.
	inducedPropagation := pairwise asInducedPropagationGraph.
	expectedEdges := { 
		SFEdge from: (SFNode base: 'a' target: 'b') to: (SFNode base: 'a1' target: 'b1') weight: 0.5.
		SFEdge from: (SFNode base: 'a1' target: 'b1') to: (SFNode base: 'a' target: 'b') weight: 1.0.
		SFEdge from: (SFNode base: 'a' target: 'b') to: (SFNode base: 'a2' target: 'b1') weight: 0.5.
		SFEdge from: (SFNode base: 'a2' target: 'b1') to: (SFNode base: 'a' target: 'b') weight: 1.0.
		SFEdge from: (SFNode base: 'a1' target: 'b2') to: (SFNode base: 'a2' target: 'b1') weight: 1.0.
		SFEdge from: (SFNode base: 'a2' target: 'b1') to: (SFNode base: 'a1' target: 'b2') weight: 1.0.
		SFEdge from: (SFNode base: 'a1' target: 'b') to: (SFNode base: 'a2' target: 'b2') weight: 1.0.
		SFEdge from: (SFNode base: 'a2' target: 'b2') to: (SFNode base: 'a1' target: 'b') weight: 1.0 }.
	self assertCollection: expectedEdges hasSameElements: inducedPropagation edges
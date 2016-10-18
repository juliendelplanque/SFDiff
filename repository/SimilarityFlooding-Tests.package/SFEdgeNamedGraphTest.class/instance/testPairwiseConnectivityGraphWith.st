tests-pairwise connectivity graph
testPairwiseConnectivityGraphWith
	| pairwise expectedEdges |
	pairwise := self graphAFromPaper pairwiseConnectivityGraphWith: self graphBFromPaper.
	expectedEdges := { 
		SFNamedEdge from: (SFNode base: 'a' target: 'b') to: (SFNode base: 'a1' target: 'b1') named: 'l1'.
		SFNamedEdge from: (SFNode base: 'a' target: 'b') to: (SFNode base: 'a2' target: 'b1') named: 'l1'.
		SFNamedEdge from: (SFNode base: 'a1' target: 'b2') to: (SFNode base: 'a2' target: 'b1') named: 'l2'.
		SFNamedEdge from: (SFNode base: 'a1' target: 'b') to: (SFNode base: 'a2' target: 'b2') named: 'l2' }.
	self assertCollection: expectedEdges hasSameElements: pairwise edges
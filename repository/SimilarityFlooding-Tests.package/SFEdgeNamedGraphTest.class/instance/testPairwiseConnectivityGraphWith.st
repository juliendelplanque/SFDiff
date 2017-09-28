tests-pairwise connectivity graph
testPairwiseConnectivityGraphWith
	| pairwise expectedEdges |
	pairwise := self graphAFromPaper pairwiseConnectivityGraphWith: self graphBFromPaper.
	expectedEdges := { 
		SFEdge from: (SFMatchCandidate base: 'a' target: 'b') to: (SFMatchCandidate base: 'a1' target: 'b1') named: 'l1'.
		SFEdge from: (SFMatchCandidate base: 'a' target: 'b') to: (SFMatchCandidate base: 'a2' target: 'b1') named: 'l1'.
		SFEdge from: (SFMatchCandidate base: 'a1' target: 'b2') to: (SFMatchCandidate base: 'a2' target: 'b1') named: 'l2'.
		SFEdge from: (SFMatchCandidate base: 'a1' target: 'b') to: (SFMatchCandidate base: 'a2' target: 'b2') named: 'l2' }.
	self assertCollection: expectedEdges hasSameElements: pairwise edges
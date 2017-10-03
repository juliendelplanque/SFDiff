tests-pairwise connectivity graph
testPairwiseConnectivityGraphWithKnowingMatches
	| pairwise expectedEdges expectedNodes |
	pairwise := self graphAFromPaper pairwiseConnectivityGraphWith: self graphBFromPaper knowingMatches: (Dictionary newFromPairs: #('a2' 'b1')).
	expectedEdges := {
		SFEdge from: (SFMatchCandidate base: 'a' target: 'b') to: (SFMatchCandidate base: 'a2' target: 'b1') named: 'l1'.
		SFEdge from: (SFMatchCandidate base: 'a1' target: 'b2') to: (SFMatchCandidate base: 'a2' target: 'b1') named: 'l2' }.
	expectedNodes := { 
		SFMatchCandidate base: 'a' target: 'b'.
		SFMatchCandidate base: 'a2' target: 'b1'.
		SFMatchCandidate base: 'a1' target: 'b2'.
		SFMatchCandidate base: 'a1' target: 'b' }.
	self
		assertCollection: pairwise edges hasSameElements: expectedEdges;
		assertCollection: pairwise nodes hasSameElements: expectedNodes
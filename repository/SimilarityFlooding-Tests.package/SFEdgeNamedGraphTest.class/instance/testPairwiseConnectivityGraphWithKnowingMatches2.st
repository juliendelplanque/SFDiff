tests-pairwise connectivity graph
testPairwiseConnectivityGraphWithKnowingMatches2
	| pairwise expectedEdges expectedNodes |
	pairwise := self graphAFromPaper pairwiseConnectivityGraphWith: self graphBFromPaper knowingMatches: (Dictionary newFromPairs: #('a1' 'b1')).
	expectedEdges := {
		SFEdge from: (SFMatchCandidate base: 'a' target: 'b') to: (SFMatchCandidate base: 'a1' target: 'b1') named: 'l1' }.
	expectedNodes := { 
		SFMatchCandidate base: 'a' target: 'b'.
		SFMatchCandidate base: 'a1' target: 'b1'.
		SFMatchCandidate base: 'a2' target: 'b2' }.
	self
		assertCollection: pairwise edges hasSameElements: expectedEdges;
		assertCollection: pairwise nodes hasSameElements: expectedNodes
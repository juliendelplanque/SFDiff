tests-accessing - computed
testIncomingEdgesLabelledForNode
	| pairwise expectedEdges |
	pairwise := self graphAFromPaper pairwiseConnectivityGraphWith: self graphBFromPaper.
	expectedEdges := { 
		SFEdge from: (SFMatchCandidate base: 'a' target: 'b') to: (SFMatchCandidate base: 'a1' target: 'b1') named: 'l1' }.
	self assertCollection: expectedEdges hasSameElements: (pairwise incomingEdgesLabelled: 'l1' forNode: (SFMatchCandidate base: 'a1' target: 'b1')).

	expectedEdges := { 
		SFEdge from: (SFMatchCandidate base: 'a' target: 'b') to: (SFMatchCandidate base: 'a2' target: 'b1') named: 'l1'. }.
	self assertCollection: expectedEdges hasSameElements: (pairwise incomingEdgesLabelled: 'l1' forNode: (SFMatchCandidate base: 'a2' target: 'b1')).
	
	expectedEdges := { 
		SFEdge from: (SFMatchCandidate base: 'a1' target: 'b2') to: (SFMatchCandidate base: 'a2' target: 'b1') named: 'l2'. }.
	self assertCollection: expectedEdges hasSameElements: (pairwise incomingEdgesLabelled: 'l2' forNode: (SFMatchCandidate base: 'a2' target: 'b1')).
	
	expectedEdges := { 
		SFEdge from: (SFMatchCandidate base: 'a1' target: 'b') to: (SFMatchCandidate base: 'a2' target: 'b2') named: 'l2'. }.
	self assertCollection: expectedEdges hasSameElements: (pairwise incomingEdgesLabelled: 'l2' forNode: (SFMatchCandidate base: 'a2' target: 'b2')).
	
	self
		assert: (pairwise incomingEdgesLabelled: 'l1' forNode: (SFMatchCandidate base: 'a2' target: 'b2')) isEmpty;
		assert: (pairwise incomingEdgesLabelled: 'l2' forNode: (SFMatchCandidate base: 'a1' target: 'b1')) isEmpty.
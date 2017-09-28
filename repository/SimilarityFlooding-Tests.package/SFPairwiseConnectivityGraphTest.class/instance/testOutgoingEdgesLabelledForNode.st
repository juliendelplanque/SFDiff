tests-accessing - computed
testOutgoingEdgesLabelledForNode
	| pairwise expectedEdges |
	pairwise := self graphAFromPaper pairwiseConnectivityGraphWith: self graphBFromPaper.
	expectedEdges := { 
		SFEdge from: (SFMatchCandidate base: 'a' target: 'b') to: (SFMatchCandidate base: 'a1' target: 'b1') named: 'l1'.
		SFEdge from: (SFMatchCandidate base: 'a' target: 'b') to: (SFMatchCandidate base: 'a2' target: 'b1') named: 'l1'. }.
	self assertCollection: expectedEdges hasSameElements: (pairwise outgoingEdgesLabelled: 'l1' forNode: (SFMatchCandidate base: 'a' target: 'b')).
	
	expectedEdges := { 
		SFEdge from: (SFMatchCandidate base: 'a1' target: 'b2') to: (SFMatchCandidate base: 'a2' target: 'b1') named: 'l2' }.
	self assertCollection: expectedEdges hasSameElements: (pairwise outgoingEdgesLabelled: 'l2' forNode: (SFMatchCandidate base: 'a1' target: 'b2')).
	
	expectedEdges := { 
		SFEdge from: (SFMatchCandidate base: 'a1' target: 'b') to: (SFMatchCandidate base: 'a2' target: 'b2') named: 'l2' }.
	self assertCollection: expectedEdges hasSameElements: (pairwise outgoingEdgesLabelled: 'l2' forNode: (SFMatchCandidate base: 'a1' target: 'b')).
	
	self
		assert: (pairwise outgoingEdgesLabelled: 'l1' forNode: (SFMatchCandidate base: 'a1' target: 'b1')) isEmpty;
		assert: (pairwise outgoingEdgesLabelled: 'l2' forNode: (SFMatchCandidate base: 'a1' target: 'b1')) isEmpty.
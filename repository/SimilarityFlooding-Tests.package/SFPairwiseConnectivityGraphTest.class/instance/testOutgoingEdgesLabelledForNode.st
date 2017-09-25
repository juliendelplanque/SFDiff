tests-accessing - computed
testOutgoingEdgesLabelledForNode
	| pairwise expectedEdges |
	pairwise := self graphAFromPaper pairwiseConnectivityGraphWith: self graphBFromPaper.
	expectedEdges := { 
		SFEdge from: (SFNode base: 'a' target: 'b') to: (SFNode base: 'a1' target: 'b1') named: 'l1'.
		SFEdge from: (SFNode base: 'a' target: 'b') to: (SFNode base: 'a2' target: 'b1') named: 'l1'. }.
	self assertCollection: expectedEdges hasSameElements: (pairwise outgoingEdgesLabelled: 'l1' forNode: (SFNode base: 'a' target: 'b')).
	
	expectedEdges := { 
		SFEdge from: (SFNode base: 'a1' target: 'b2') to: (SFNode base: 'a2' target: 'b1') named: 'l2' }.
	self assertCollection: expectedEdges hasSameElements: (pairwise outgoingEdgesLabelled: 'l2' forNode: (SFNode base: 'a1' target: 'b2')).
	
	expectedEdges := { 
		SFEdge from: (SFNode base: 'a1' target: 'b') to: (SFNode base: 'a2' target: 'b2') named: 'l2' }.
	self assertCollection: expectedEdges hasSameElements: (pairwise outgoingEdgesLabelled: 'l2' forNode: (SFNode base: 'a1' target: 'b')).
	
	self
		assert: (pairwise outgoingEdgesLabelled: 'l1' forNode: (SFNode base: 'a1' target: 'b1')) isEmpty;
		assert: (pairwise outgoingEdgesLabelled: 'l2' forNode: (SFNode base: 'a1' target: 'b1')) isEmpty.
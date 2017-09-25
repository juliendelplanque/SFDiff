tests-accessing - computed
testIncomingEdgesLabelledForNode
	| pairwise expectedEdges |
	pairwise := self graphAFromPaper pairwiseConnectivityGraphWith: self graphBFromPaper.
	expectedEdges := { 
		SFEdge from: (SFNode base: 'a' target: 'b') to: (SFNode base: 'a1' target: 'b1') named: 'l1' }.
	self assertCollection: expectedEdges hasSameElements: (pairwise incomingEdgesLabelled: 'l1' forNode: (SFNode base: 'a1' target: 'b1')).

	expectedEdges := { 
		SFEdge from: (SFNode base: 'a' target: 'b') to: (SFNode base: 'a2' target: 'b1') named: 'l1'. }.
	self assertCollection: expectedEdges hasSameElements: (pairwise incomingEdgesLabelled: 'l1' forNode: (SFNode base: 'a2' target: 'b1')).
	
	expectedEdges := { 
		SFEdge from: (SFNode base: 'a1' target: 'b2') to: (SFNode base: 'a2' target: 'b1') named: 'l2'. }.
	self assertCollection: expectedEdges hasSameElements: (pairwise incomingEdgesLabelled: 'l2' forNode: (SFNode base: 'a2' target: 'b1')).
	
	expectedEdges := { 
		SFEdge from: (SFNode base: 'a1' target: 'b') to: (SFNode base: 'a2' target: 'b2') named: 'l2'. }.
	self assertCollection: expectedEdges hasSameElements: (pairwise incomingEdgesLabelled: 'l2' forNode: (SFNode base: 'a2' target: 'b2')).
	
	self
		assert: (pairwise incomingEdgesLabelled: 'l1' forNode: (SFNode base: 'a2' target: 'b2')) isEmpty;
		assert: (pairwise incomingEdgesLabelled: 'l2' forNode: (SFNode base: 'a1' target: 'b1')) isEmpty.
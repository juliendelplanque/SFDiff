graph for testing
graphBFromPaper
	^ SFEdgeNamedGraph new
		addEdge: (SFEdge from: 'b' to: 'b1' named: 'l1');
		addEdge: (SFEdge from: 'b' to: 'b2' named: 'l2');
		addEdge: (SFEdge from: 'b2' to: 'b1' named: 'l2');
		yourself
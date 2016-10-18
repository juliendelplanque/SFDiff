graph for testing
graphBFromPaper
	^ SFEdgeNamedGraph new
		addEdge: (SFNamedEdge from: 'b' to: 'b1' named: 'l1');
		addEdge: (SFNamedEdge from: 'b' to: 'b2' named: 'l2');
		addEdge: (SFNamedEdge from: 'b2' to: 'b1' named: 'l2');
		yourself
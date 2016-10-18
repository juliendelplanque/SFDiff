graph for testing
graphAFromPaper
	^ SFEdgeNamedGraph new
		addEdge: (SFNamedEdge from: 'a' to: 'a1' named: 'l1');
		addEdge: (SFNamedEdge from: 'a' to: 'a2' named: 'l1');
		addEdge: (SFNamedEdge from: 'a1' to: 'a2' named: 'l2');
		yourself
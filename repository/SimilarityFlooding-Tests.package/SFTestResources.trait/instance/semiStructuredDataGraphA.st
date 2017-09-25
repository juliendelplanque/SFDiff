graph for testing
semiStructuredDataGraphA
	^ SFEdgeNamedGraph new
		addEdge: (SFEdge from: '1' to: '2' named: 'b');
		addEdge: (SFEdge from: '2' to: '3' named: 'd');
		addEdge: (SFEdge from: '1' to: '4' named: 'e');
		addEdge: (SFEdge from: '4' to: '5' named: 'a');
		addEdge: (SFEdge from: '4' to: '6' named: 'f');
		addEdge: (SFEdge from: '4' to: '7' named: 'cc');
		addEdge: (SFEdge from: '7' to: '8' named: 'ac');
		addEdge: (SFEdge from: '1' to: '9' named: 'cd');
		addEdge: (SFEdge from: '9' to: '10' named: 'ad');
		yourself
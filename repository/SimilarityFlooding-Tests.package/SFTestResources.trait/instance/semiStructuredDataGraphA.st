graph for testing
semiStructuredDataGraphA
	^ SFEdgeNamedGraph new
		addEdge: (SFNamedEdge from: '1' to: '2' named: 'b');
		addEdge: (SFNamedEdge from: '2' to: '3' named: 'd');
		addEdge: (SFNamedEdge from: '1' to: '4' named: 'e');
		addEdge: (SFNamedEdge from: '4' to: '5' named: 'a');
		addEdge: (SFNamedEdge from: '4' to: '6' named: 'f');
		addEdge: (SFNamedEdge from: '4' to: '7' named: 'cc');
		addEdge: (SFNamedEdge from: '7' to: '8' named: 'ac');
		addEdge: (SFNamedEdge from: '1' to: '9' named: 'cd');
		addEdge: (SFNamedEdge from: '9' to: '10' named: 'ad');
		yourself
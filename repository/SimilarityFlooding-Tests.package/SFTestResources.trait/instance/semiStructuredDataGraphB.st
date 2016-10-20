graph for testing
semiStructuredDataGraphB
	^ SFEdgeNamedGraph new
		addEdge: (SFNamedEdge from: '51' to: '52' named: 'cc');
		addEdge: (SFNamedEdge from: '52' to: '53' named: 'ac');
		addEdge: (SFNamedEdge from: '51' to: '55' named: 'e');
		addEdge: (SFNamedEdge from: '55' to: '56' named: 'a');
		addEdge: (SFNamedEdge from: '55' to: '57' named: 'f');
		addEdge: (SFNamedEdge from: '57' to: '58' named: 'b');
		addEdge: (SFNamedEdge from: '58' to: '59' named: 'd');
		addEdge: (SFNamedEdge from: '55' to: '61' named: 'cc');
		addEdge: (SFNamedEdge from: '61' to: '62' named: 'ac');
		addEdge: (SFNamedEdge from: '51' to: '60' named: 'g');
		addEdge: (SFNamedEdge from: '60' to: '63' named: 'cd');
		addEdge: (SFNamedEdge from: '63' to: '64' named: 'ad');
		yourself
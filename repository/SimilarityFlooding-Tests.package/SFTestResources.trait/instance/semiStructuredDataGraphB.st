graph for testing
semiStructuredDataGraphB
	^ SFEdgeNamedGraph new
		addEdge: (SFEdge from: '51' to: '52' named: 'cc');
		addEdge: (SFEdge from: '52' to: '53' named: 'ac');
		addEdge: (SFEdge from: '51' to: '55' named: 'e');
		addEdge: (SFEdge from: '55' to: '56' named: 'a');
		addEdge: (SFEdge from: '55' to: '57' named: 'f');
		addEdge: (SFEdge from: '57' to: '58' named: 'b');
		addEdge: (SFEdge from: '58' to: '59' named: 'd');
		addEdge: (SFEdge from: '55' to: '61' named: 'cc');
		addEdge: (SFEdge from: '61' to: '62' named: 'ac');
		addEdge: (SFEdge from: '51' to: '60' named: 'g');
		addEdge: (SFEdge from: '60' to: '63' named: 'cd');
		addEdge: (SFEdge from: '63' to: '64' named: 'ad');
		yourself
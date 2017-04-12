adding
addEdge: aSFEdge
	super addEdge: aSFEdge.
	incomingEdges addEdge: aSFEdge.
	outgoingEdges addEdge: aSFEdge.
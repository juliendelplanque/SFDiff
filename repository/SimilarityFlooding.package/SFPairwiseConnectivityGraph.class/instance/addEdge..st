as yet unclassified
addEdge: aSFEdge
	super addEdge: aSFEdge.
	(incomingEdges includesKey: aSFEdge to)
		ifTrue: [ (incomingEdges at: aSFEdge to) add: aSFEdge ]
		ifFalse: [ incomingEdges at: aSFEdge to put: (OrderedCollection with: aSFEdge) ].
	
	(outgoingEdges includesKey: aSFEdge from)
		ifTrue: [ (outgoingEdges at: aSFEdge from) add: aSFEdge ]
		ifFalse: [ outgoingEdges at: aSFEdge from put: (OrderedCollection with: aSFEdge) ].
accessing - computed
incomingEdgesOf: aNode
	^ incomingEdges at: aNode ifAbsent: [ ^#() ]
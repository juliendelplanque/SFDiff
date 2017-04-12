accessing - computed
outgoingEdgesOf: aNode
	^ outgoingEdges at: aNode ifAbsent: [ ^#() ]
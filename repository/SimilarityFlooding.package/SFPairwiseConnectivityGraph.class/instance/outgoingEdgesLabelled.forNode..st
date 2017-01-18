accessing - computed
outgoingEdgesLabelled: aString forNode: aNode
	^ (outgoingEdges at: aNode ifAbsent: [ ^#() ]) select: [ :edge | edge name = aString ]
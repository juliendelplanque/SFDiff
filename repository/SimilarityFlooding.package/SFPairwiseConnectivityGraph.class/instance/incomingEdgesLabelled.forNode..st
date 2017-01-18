accessing - computed
incomingEdgesLabelled: aString forNode: aNode
	^ (incomingEdges at: aNode ifAbsent: [ ^#() ]) select: [ :edge | edge name = aString ]
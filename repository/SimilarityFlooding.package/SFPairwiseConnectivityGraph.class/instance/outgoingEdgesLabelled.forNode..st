accessing - computed
outgoingEdgesLabelled: aString forNode: aNode
	^ (self outgoingEdgesOf: aNode) select: [ :edge | edge name = aString ]
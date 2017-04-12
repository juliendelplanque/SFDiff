accessing - computed
incomingEdgesLabelled: aString forNode: aNode
	^ (self incomingEdgesOf: aNode) select: [ :edge | edge name = aString ]
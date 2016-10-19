accessing - computed
outgoingEdgesLabelled: aString forNode: aNode
	"^ self edges select: [ :edge | edge name = aString and: [ edge from = aNode ] ]"
	^ (outgoingEdges at: aNode ifAbsent: [ ^#() ]) select: [ :edge | edge name = aString ]
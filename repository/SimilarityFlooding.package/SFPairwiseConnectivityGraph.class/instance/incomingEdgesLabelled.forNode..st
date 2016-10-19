accessing - computed
incomingEdgesLabelled: aString forNode: aNode
	"^ self edges select: [ :edge | edge name = aString and: [ edge to = aNode ] ]"
	^ (incomingEdges at: aNode ifAbsent: [ ^#() ]) select: [ :edge | edge name = aString ]
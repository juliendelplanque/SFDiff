joining
joinGraph: aSFNamedGraph withGraph: anotherSFNamedGraph
	^ self
		joinGraph: aSFNamedGraph
		withGraph: anotherSFNamedGraph
		initialSigmaValueBlock: [ :nodes | (nodes collect: [ :node | node -> 1 ]) asDictionary ]
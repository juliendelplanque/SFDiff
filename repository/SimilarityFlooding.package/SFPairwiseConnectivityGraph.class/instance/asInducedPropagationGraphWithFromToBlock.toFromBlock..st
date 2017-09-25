converting
asInducedPropagationGraphWithFromToBlock: fromToBlock toFromBlock: toFromBlock
	| propagationGraph |
	propagationGraph := SFInducedPropagationGraph new.
	self edges do: [ :edge |
		propagationGraph
			addEdge: (SFEdge from: edge from to: edge to weight: (fromToBlock value: self value: edge));
			addEdge: (SFEdge from: edge to to: edge from weight: (toFromBlock value: self value: edge)) ] displayingProgress: 'Building induced propagation graph'.
	^ propagationGraph
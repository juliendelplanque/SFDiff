converting
asInducedPropagationGraphWithFromToBlock: fromToBlock toFromBlock: toFromBlock
	| propagationGraph |
	propagationGraph := SFInducedPropagationGraph new.
	self edges do: [ :edge |
		propagationGraph
			addEdge: (edge
							fromToWeight: (fromToBlock value: self value: edge);
							toFromWeight: (toFromBlock value: self value: edge);
							yourself) ].
	^ propagationGraph